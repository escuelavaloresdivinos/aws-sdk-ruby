# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'test_helper'

module Seahorse
  class Client
    describe Request do

      def handler
        @handler ||= lambda { |context| }
      end

      def context
        @context ||= RequestContext.new
      end

      def request
        @request ||= Request.new(handler, context)
      end

      describe '#context' do

        it 'returns the request handler' do
          assert_same(request.handler, handler)
        end

      end

      describe '#context' do

        it 'returns the request context given the constructor' do
          request.context.must_be_same_as(context)
        end

      end

      describe '#on' do

        it 'registers an event listener on the request context' do
          emitted = nil
          request.on(:event_name) { |value| emitted = value }
          request.context.events.emit(:event_name, 'abc')
          emitted.must_equal('abc')
        end

      end

      describe '#send' do

        it 'passes the request context to the handler' do
          handler = Minitest::Mock.new
          handler.expect(:call, Response.new, [context])
          Request.new(handler, context).send
          handler.verify
        end

        it 'returns the response from the handler stack' do
          resp = Response.new
          handler = lambda { |context| resp }
          Request.new(handler, context).send.must_be_same_as(resp)
        end

        describe 'with block argument' do

          def handler
            lambda do |context|
              context.http_response.body << 'part1'
              context.http_response.body << 'part2'
              context.http_response.body << 'part3'
              Response.new(context: context)
            end
          end

          it 'streams data from the handler to the #send block' do
            data = []
            Request.new(handler, context).send { |chunk| data << chunk }
            data.must_equal(['part1', 'part2', 'part3'])
          end

          it 'does not buffer the response chunks' do
            response = Request.new(handler, context).send { |chunk| }
            response.http_response.body.must_equal('')
          end

        end
      end
    end
  end
end
