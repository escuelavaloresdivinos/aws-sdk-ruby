# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::AccessAnalyzer
  describe EndpointProvider do
    subject { Aws::AccessAnalyzer::EndpointProvider.new }

    context 'For region ap-south-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-south-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-south-2", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-south-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-south-2", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-south-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-south-2", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-south-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-south-2", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-south-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-south-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-south-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-south-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.eu-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-south-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.eu-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-south-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.eu-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-south-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.eu-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-south-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.eu-south-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-south-2", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.eu-south-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-south-2", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.eu-south-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-south-2", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.eu-south-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-south-2", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-east-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-gov-east-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-east-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-gov-east-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-east-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-gov-east-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-east-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-gov-east-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-central-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"me-central-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-central-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"me-central-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-central-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"me-central-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-central-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"me-central-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ca-central-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ca-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ca-central-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ca-central-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ca-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ca-central-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ca-central-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ca-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ca-central-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ca-central-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ca-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ca-central-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.eu-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-central-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.eu-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-central-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.eu-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-central-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.eu-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-central-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.eu-central-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-central-2", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.eu-central-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-central-2", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.eu-central-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-central-2", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.eu-central-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-central-2", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.us-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-west-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.us-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-west-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.us-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-west-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.us-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-west-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.us-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-west-2", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-west-2", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.us-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-west-2", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-west-2", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region af-south-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.af-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"af-south-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region af-south-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.af-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"af-south-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region af-south-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.af-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"af-south-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region af-south-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.af-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"af-south-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-north-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.eu-north-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-north-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-north-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.eu-north-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-north-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-north-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.eu-north-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-north-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-north-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.eu-north-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-north-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-3 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.eu-west-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-west-3", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-3 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.eu-west-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-west-3", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-3 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.eu-west-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-west-3", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-3 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.eu-west-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-west-3", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.eu-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-west-2", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.eu-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-west-2", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.eu-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-west-2", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.eu-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-west-2", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-west-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-west-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-west-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-west-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-3 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-northeast-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-northeast-3", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-3 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-northeast-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-northeast-3", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-3 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-northeast-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-northeast-3", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-3 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-northeast-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-northeast-3", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-northeast-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-northeast-2", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-northeast-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-northeast-2", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-northeast-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-northeast-2", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-northeast-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-northeast-2", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-northeast-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-northeast-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-northeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-northeast-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-northeast-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-northeast-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-northeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-northeast-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-south-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"me-south-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-south-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"me-south-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-south-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"me-south-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-south-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"me-south-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region sa-east-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.sa-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"sa-east-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region sa-east-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.sa-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"sa-east-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region sa-east-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.sa-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"sa-east-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region sa-east-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.sa-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"sa-east-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-east-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-east-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-east-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-east-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-east-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-east-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-east-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-east-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-north-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"cn-north-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-north-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"cn-north-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-north-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"cn-north-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-north-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"cn-north-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ca-west-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ca-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ca-west-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ca-west-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ca-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ca-west-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ca-west-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ca-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ca-west-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ca-west-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ca-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ca-west-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-west-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-gov-west-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-west-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-gov-west-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-west-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-gov-west-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-west-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-gov-west-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-southeast-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-southeast-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-southeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-southeast-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-southeast-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-southeast-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-southeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-southeast-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-southeast-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-southeast-2", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-southeast-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-southeast-2", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-southeast-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-southeast-2", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-southeast-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-southeast-2", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-3 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-southeast-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-southeast-3", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-3 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-southeast-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-southeast-3", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-3 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-southeast-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-southeast-3", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-3 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-southeast-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-southeast-3", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-4 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-southeast-4.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-southeast-4", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-4 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.ap-southeast-4.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-southeast-4", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-4 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-southeast-4.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-southeast-4", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-4 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.ap-southeast-4.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-southeast-4", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-east-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-east-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-east-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-east-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.us-east-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-east-2", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-east-2", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.us-east-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-east-2", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-east-2", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-northwest-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"cn-northwest-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-northwest-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer-fips.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"cn-northwest-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-northwest-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"cn-northwest-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-northwest-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://access-analyzer.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"cn-northwest-1", :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For custom endpoint with fips disabled and dualstack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-east-1", :use_dual_stack=>false, :endpoint=>"https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For custom endpoint with fips enabled and dualstack disabled' do
      let(:expected) do
        {"error"=>"Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-east-1", :use_dual_stack=>false, :endpoint=>"https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'For custom endpoint with fips disabled and dualstack enabled' do
      let(:expected) do
        {"error"=>"Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-east-1", :use_dual_stack=>true, :endpoint=>"https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

  end
end
