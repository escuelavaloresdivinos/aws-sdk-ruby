# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  class EndpointProvider
    def initialize(rule_set = nil)
      @@rule_set ||= begin
        endpoint_rules = Aws::Json.load(Base64.decode64(RULES))
        Aws::Endpoints::RuleSet.new(
          version: endpoint_rules['version'],
          service_id: endpoint_rules['serviceId'],
          parameters: endpoint_rules['parameters'],
          rules: endpoint_rules['rules']
        )
      end
      @provider = Aws::Endpoints::RulesProvider.new(rule_set || @@rule_set)
    end

    def resolve_endpoint(parameters)
      @provider.resolve_endpoint(parameters)
    end

    # @api private
    RULES = <<-JSON
eyJ2ZXJzaW9uIjoiMS4wIiwicGFyYW1ldGVycyI6eyJSZWdpb24iOnsiYnVp
bHRJbiI6IkFXUzo6UmVnaW9uIiwicmVxdWlyZWQiOmZhbHNlLCJkb2N1bWVu
dGF0aW9uIjoiVGhlIEFXUyByZWdpb24gdXNlZCB0byBkaXNwYXRjaCB0aGUg
cmVxdWVzdC4iLCJ0eXBlIjoiU3RyaW5nIn0sIlVzZUR1YWxTdGFjayI6eyJi
dWlsdEluIjoiQVdTOjpVc2VEdWFsU3RhY2siLCJyZXF1aXJlZCI6dHJ1ZSwi
ZGVmYXVsdCI6ZmFsc2UsImRvY3VtZW50YXRpb24iOiJXaGVuIHRydWUsIHVz
ZSB0aGUgZHVhbC1zdGFjayBlbmRwb2ludC4gSWYgdGhlIGNvbmZpZ3VyZWQg
ZW5kcG9pbnQgZG9lcyBub3Qgc3VwcG9ydCBkdWFsLXN0YWNrLCBkaXNwYXRj
aGluZyB0aGUgcmVxdWVzdCBNQVkgcmV0dXJuIGFuIGVycm9yLiIsInR5cGUi
OiJCb29sZWFuIn0sIlVzZUZJUFMiOnsiYnVpbHRJbiI6IkFXUzo6VXNlRklQ
UyIsInJlcXVpcmVkIjp0cnVlLCJkZWZhdWx0IjpmYWxzZSwiZG9jdW1lbnRh
dGlvbiI6IldoZW4gdHJ1ZSwgc2VuZCB0aGlzIHJlcXVlc3QgdG8gdGhlIEZJ
UFMtY29tcGxpYW50IHJlZ2lvbmFsIGVuZHBvaW50LiBJZiB0aGUgY29uZmln
dXJlZCBlbmRwb2ludCBkb2VzIG5vdCBoYXZlIGEgRklQUyBjb21wbGlhbnQg
ZW5kcG9pbnQsIGRpc3BhdGNoaW5nIHRoZSByZXF1ZXN0IHdpbGwgcmV0dXJu
IGFuIGVycm9yLiIsInR5cGUiOiJCb29sZWFuIn0sIkVuZHBvaW50Ijp7ImJ1
aWx0SW4iOiJTREs6OkVuZHBvaW50IiwicmVxdWlyZWQiOmZhbHNlLCJkb2N1
bWVudGF0aW9uIjoiT3ZlcnJpZGUgdGhlIGVuZHBvaW50IHVzZWQgdG8gc2Vu
ZCB0aGlzIHJlcXVlc3QiLCJ0eXBlIjoiU3RyaW5nIn19LCJydWxlcyI6W3si
Y29uZGl0aW9ucyI6W3siZm4iOiJhd3MucGFydGl0aW9uIiwiYXJndiI6W3si
cmVmIjoiUmVnaW9uIn1dLCJhc3NpZ24iOiJQYXJ0aXRpb25SZXN1bHQifV0s
InR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOlt7ImZuIjoi
aXNTZXQiLCJhcmd2IjpbeyJyZWYiOiJFbmRwb2ludCJ9XX0seyJmbiI6InBh
cnNlVVJMIiwiYXJndiI6W3sicmVmIjoiRW5kcG9pbnQifV0sImFzc2lnbiI6
InVybCJ9XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6
W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRklQ
UyJ9LHRydWVdfV0sImVycm9yIjoiSW52YWxpZCBDb25maWd1cmF0aW9uOiBG
SVBTIGFuZCBjdXN0b20gZW5kcG9pbnQgYXJlIG5vdCBzdXBwb3J0ZWQiLCJ0
eXBlIjoiZXJyb3IifSx7ImNvbmRpdGlvbnMiOltdLCJ0eXBlIjoidHJlZSIs
InJ1bGVzIjpbeyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMi
LCJhcmd2IjpbeyJyZWYiOiJVc2VEdWFsU3RhY2sifSx0cnVlXX1dLCJlcnJv
ciI6IkludmFsaWQgQ29uZmlndXJhdGlvbjogRHVhbHN0YWNrIGFuZCBjdXN0
b20gZW5kcG9pbnQgYXJlIG5vdCBzdXBwb3J0ZWQiLCJ0eXBlIjoiZXJyb3Ii
fSx7ImNvbmRpdGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOnsicmVmIjoi
RW5kcG9pbnQifSwicHJvcGVydGllcyI6e30sImhlYWRlcnMiOnt9fSwidHlw
ZSI6ImVuZHBvaW50In1dfV19LHsiY29uZGl0aW9ucyI6W3siZm4iOiJzdHJp
bmdFcXVhbHMiLCJhcmd2IjpbeyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJy
ZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwibmFtZSJdfSwiYXdzIl19XSwidHlw
ZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4iOiJib29s
ZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRklQUyJ9LHRydWVdfSx7
ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUR1YWxT
dGFjayJ9LHRydWVdfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRp
dGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt0cnVlLHsi
Zm4iOiJnZXRBdHRyIiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0
In0sInN1cHBvcnRzRklQUyJdfV19LHsiZm4iOiJib29sZWFuRXF1YWxzIiwi
YXJndiI6W3RydWUseyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQ
YXJ0aXRpb25SZXN1bHQifSwic3VwcG9ydHNEdWFsU3RhY2siXX1dfV0sInR5
cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOltdLCJlbmRwb2lu
dCI6eyJ1cmwiOiJodHRwczovL2lhbS1maXBzLntSZWdpb259LmFwaS5hd3Mi
LCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hlbWVzIjpbeyJuYW1lIjoic2lndjQi
LCJzaWduaW5nTmFtZSI6ImlhbSIsInNpZ25pbmdSZWdpb24iOiJ1cy1lYXN0
LTEifV19LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRwb2ludCJ9XX0seyJj
b25kaXRpb25zIjpbXSwiZXJyb3IiOiJGSVBTIGFuZCBEdWFsU3RhY2sgYXJl
IGVuYWJsZWQsIGJ1dCB0aGlzIHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0
IG9uZSBvciBib3RoIiwidHlwZSI6ImVycm9yIn1dfSx7ImNvbmRpdGlvbnMi
Olt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUZJ
UFMifSx0cnVlXX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRp
b25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZu
IjoiZ2V0QXR0ciIsImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9
LCJzdXBwb3J0c0ZJUFMiXX1dfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7
ImNvbmRpdGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2lh
bS1maXBzLmFtYXpvbmF3cy5jb20iLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hl
bWVzIjpbeyJuYW1lIjoic2lndjQiLCJzaWduaW5nTmFtZSI6ImlhbSIsInNp
Z25pbmdSZWdpb24iOiJ1cy1lYXN0LTEifV19LCJoZWFkZXJzIjp7fX0sInR5
cGUiOiJlbmRwb2ludCJ9XX0seyJjb25kaXRpb25zIjpbXSwiZXJyb3IiOiJG
SVBTIGlzIGVuYWJsZWQgYnV0IHRoaXMgcGFydGl0aW9uIGRvZXMgbm90IHN1
cHBvcnQgRklQUyIsInR5cGUiOiJlcnJvciJ9XX0seyJjb25kaXRpb25zIjpb
eyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VEdWFs
U3RhY2sifSx0cnVlXX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25k
aXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1ZSx7
ImZuIjoiZ2V0QXR0ciIsImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJlc3Vs
dCJ9LCJzdXBwb3J0c0R1YWxTdGFjayJdfV19XSwidHlwZSI6InRyZWUiLCJy
dWxlcyI6W3siY29uZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7InVybCI6Imh0
dHBzOi8vaWFtLntSZWdpb259LmFwaS5hd3MiLCJwcm9wZXJ0aWVzIjp7ImF1
dGhTY2hlbWVzIjpbeyJuYW1lIjoic2lndjQiLCJzaWduaW5nTmFtZSI6Imlh
bSIsInNpZ25pbmdSZWdpb24iOiJ1cy1lYXN0LTEifV19LCJoZWFkZXJzIjp7
fX0sInR5cGUiOiJlbmRwb2ludCJ9XX0seyJjb25kaXRpb25zIjpbXSwiZXJy
b3IiOiJEdWFsU3RhY2sgaXMgZW5hYmxlZCBidXQgdGhpcyBwYXJ0aXRpb24g
ZG9lcyBub3Qgc3VwcG9ydCBEdWFsU3RhY2siLCJ0eXBlIjoiZXJyb3IifV19
LHsiY29uZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8v
aWFtLmFtYXpvbmF3cy5jb20iLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hlbWVz
IjpbeyJuYW1lIjoic2lndjQiLCJzaWduaW5nTmFtZSI6ImlhbSIsInNpZ25p
bmdSZWdpb24iOiJ1cy1lYXN0LTEifV19LCJoZWFkZXJzIjp7fX0sInR5cGUi
OiJlbmRwb2ludCJ9XX0seyJjb25kaXRpb25zIjpbeyJmbiI6InN0cmluZ0Vx
dWFscyIsImFyZ3YiOlt7ImZuIjoiZ2V0QXR0ciIsImFyZ3YiOlt7InJlZiI6
IlBhcnRpdGlvblJlc3VsdCJ9LCJuYW1lIl19LCJhd3MtY24iXX1dLCJ0eXBl
IjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xl
YW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VGSVBTIn0sdHJ1ZV19LHsi
Zm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRHVhbFN0
YWNrIn0sdHJ1ZV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0
aW9ucyI6W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3RydWUseyJm
biI6ImdldEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQYXJ0aXRpb25SZXN1bHQi
fSwic3VwcG9ydHNGSVBTIl19XX0seyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJh
cmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0QXR0ciIsImFyZ3YiOlt7InJlZiI6IlBh
cnRpdGlvblJlc3VsdCJ9LCJzdXBwb3J0c0R1YWxTdGFjayJdfV19XSwidHlw
ZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W10sImVuZHBvaW50
Ijp7InVybCI6Imh0dHBzOi8vaWFtLWZpcHMue1JlZ2lvbn0uYXBpLmFtYXpv
bndlYnNlcnZpY2VzLmNvbS5jbiIsInByb3BlcnRpZXMiOnsiYXV0aFNjaGVt
ZXMiOlt7Im5hbWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoiaWFtIiwic2ln
bmluZ1JlZ2lvbiI6ImNuLW5vcnRoLTEifV19LCJoZWFkZXJzIjp7fX0sInR5
cGUiOiJlbmRwb2ludCJ9XX0seyJjb25kaXRpb25zIjpbXSwiZXJyb3IiOiJG
SVBTIGFuZCBEdWFsU3RhY2sgYXJlIGVuYWJsZWQsIGJ1dCB0aGlzIHBhcnRp
dGlvbiBkb2VzIG5vdCBzdXBwb3J0IG9uZSBvciBib3RoIiwidHlwZSI6ImVy
cm9yIn1dfSx7ImNvbmRpdGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIs
ImFyZ3YiOlt7InJlZiI6IlVzZUZJUFMifSx0cnVlXX1dLCJ0eXBlIjoidHJl
ZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVh
bHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0QXR0ciIsImFyZ3YiOlt7InJl
ZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJzdXBwb3J0c0ZJUFMiXX1dfV0sInR5
cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOltdLCJlbmRwb2lu
dCI6eyJ1cmwiOiJodHRwczovL2lhbS1maXBzLntSZWdpb259LmFtYXpvbmF3
cy5jb20uY24iLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hlbWVzIjpbeyJuYW1l
Ijoic2lndjQiLCJzaWduaW5nTmFtZSI6ImlhbSIsInNpZ25pbmdSZWdpb24i
OiJjbi1ub3J0aC0xIn1dfSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9p
bnQifV19LHsiY29uZGl0aW9ucyI6W10sImVycm9yIjoiRklQUyBpcyBlbmFi
bGVkIGJ1dCB0aGlzIHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IEZJUFMi
LCJ0eXBlIjoiZXJyb3IifV19LHsiY29uZGl0aW9ucyI6W3siZm4iOiJib29s
ZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRHVhbFN0YWNrIn0sdHJ1
ZV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3si
Zm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3RydWUseyJmbiI6ImdldEF0
dHIiLCJhcmd2IjpbeyJyZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwic3VwcG9y
dHNEdWFsU3RhY2siXX1dfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNv
bmRpdGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2lhbS57
UmVnaW9ufS5hcGkuYW1hem9ud2Vic2VydmljZXMuY29tLmNuIiwicHJvcGVy
dGllcyI6eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6InNpZ3Y0Iiwic2lnbmlu
Z05hbWUiOiJpYW0iLCJzaWduaW5nUmVnaW9uIjoiY24tbm9ydGgtMSJ9XX0s
ImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In1dfSx7ImNvbmRpdGlv
bnMiOltdLCJlcnJvciI6IkR1YWxTdGFjayBpcyBlbmFibGVkIGJ1dCB0aGlz
IHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IER1YWxTdGFjayIsInR5cGUi
OiJlcnJvciJ9XX0seyJjb25kaXRpb25zIjpbXSwiZW5kcG9pbnQiOnsidXJs
IjoiaHR0cHM6Ly9pYW0uY24tbm9ydGgtMS5hbWF6b25hd3MuY29tLmNuIiwi
cHJvcGVydGllcyI6eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6InNpZ3Y0Iiwi
c2lnbmluZ05hbWUiOiJpYW0iLCJzaWduaW5nUmVnaW9uIjoiY24tbm9ydGgt
MSJ9XX0sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In1dfSx7ImNv
bmRpdGlvbnMiOlt7ImZuIjoic3RyaW5nRXF1YWxzIiwiYXJndiI6W3siZm4i
OiJnZXRBdHRyIiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0In0s
Im5hbWUiXX0sImF3cy11cy1nb3YiXX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVz
IjpbeyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2
IjpbeyJyZWYiOiJVc2VGSVBTIn0sdHJ1ZV19LHsiZm4iOiJib29sZWFuRXF1
YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRHVhbFN0YWNrIn0sdHJ1ZV19XSwi
dHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4iOiJi
b29sZWFuRXF1YWxzIiwiYXJndiI6W3RydWUseyJmbiI6ImdldEF0dHIiLCJh
cmd2IjpbeyJyZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwic3VwcG9ydHNGSVBT
Il19XX0seyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZu
IjoiZ2V0QXR0ciIsImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9
LCJzdXBwb3J0c0R1YWxTdGFjayJdfV19XSwidHlwZSI6InRyZWUiLCJydWxl
cyI6W3siY29uZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7InVybCI6Imh0dHBz
Oi8vaWFtLWZpcHMue1JlZ2lvbn0uYXBpLmF3cyIsInByb3BlcnRpZXMiOnsi
YXV0aFNjaGVtZXMiOlt7Im5hbWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoi
aWFtIiwic2lnbmluZ1JlZ2lvbiI6InVzLWdvdi13ZXN0LTEifV19LCJoZWFk
ZXJzIjp7fX0sInR5cGUiOiJlbmRwb2ludCJ9XX0seyJjb25kaXRpb25zIjpb
XSwiZXJyb3IiOiJGSVBTIGFuZCBEdWFsU3RhY2sgYXJlIGVuYWJsZWQsIGJ1
dCB0aGlzIHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IG9uZSBvciBib3Ro
IiwidHlwZSI6ImVycm9yIn1dfSx7ImNvbmRpdGlvbnMiOlt7ImZuIjoiYm9v
bGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUZJUFMifSx0cnVlXX1d
LCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpbeyJmbiI6
ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0QXR0ciIs
ImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJzdXBwb3J0c0ZJ
UFMiXX1dfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMi
OltdLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2lhbS51cy1nb3YuYW1h
em9uYXdzLmNvbSIsInByb3BlcnRpZXMiOnsiYXV0aFNjaGVtZXMiOlt7Im5h
bWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoiaWFtIiwic2lnbmluZ1JlZ2lv
biI6InVzLWdvdi13ZXN0LTEifV19LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJl
bmRwb2ludCJ9XX0seyJjb25kaXRpb25zIjpbXSwiZXJyb3IiOiJGSVBTIGlz
IGVuYWJsZWQgYnV0IHRoaXMgcGFydGl0aW9uIGRvZXMgbm90IHN1cHBvcnQg
RklQUyIsInR5cGUiOiJlcnJvciJ9XX0seyJjb25kaXRpb25zIjpbeyJmbiI6
ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VEdWFsU3RhY2si
fSx0cnVlXX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25z
IjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoi
Z2V0QXR0ciIsImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJz
dXBwb3J0c0R1YWxTdGFjayJdfV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6
W3siY29uZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8v
aWFtLntSZWdpb259LmFwaS5hd3MiLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hl
bWVzIjpbeyJuYW1lIjoic2lndjQiLCJzaWduaW5nTmFtZSI6ImlhbSIsInNp
Z25pbmdSZWdpb24iOiJ1cy1nb3Ytd2VzdC0xIn1dfSwiaGVhZGVycyI6e319
LCJ0eXBlIjoiZW5kcG9pbnQifV19LHsiY29uZGl0aW9ucyI6W10sImVycm9y
IjoiRHVhbFN0YWNrIGlzIGVuYWJsZWQgYnV0IHRoaXMgcGFydGl0aW9uIGRv
ZXMgbm90IHN1cHBvcnQgRHVhbFN0YWNrIiwidHlwZSI6ImVycm9yIn1dfSx7
ImNvbmRpdGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2lh
bS51cy1nb3YuYW1hem9uYXdzLmNvbSIsInByb3BlcnRpZXMiOnsiYXV0aFNj
aGVtZXMiOlt7Im5hbWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoiaWFtIiwi
c2lnbmluZ1JlZ2lvbiI6InVzLWdvdi13ZXN0LTEifV19LCJoZWFkZXJzIjp7
fX0sInR5cGUiOiJlbmRwb2ludCJ9XX0seyJjb25kaXRpb25zIjpbeyJmbiI6
InN0cmluZ0VxdWFscyIsImFyZ3YiOlt7ImZuIjoiZ2V0QXR0ciIsImFyZ3Yi
Olt7InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJuYW1lIl19LCJhd3MtaXNv
Il19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3si
Zm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRklQUyJ9
LHRydWVdfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMi
Olt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt0cnVlLHsiZm4iOiJn
ZXRBdHRyIiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0In0sInN1
cHBvcnRzRklQUyJdfV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29u
ZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vaWFtLWZp
cHMue1JlZ2lvbn0uYzJzLmljLmdvdiIsInByb3BlcnRpZXMiOnsiYXV0aFNj
aGVtZXMiOlt7Im5hbWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoiaWFtIiwi
c2lnbmluZ1JlZ2lvbiI6InVzLWlzby1lYXN0LTEifV19LCJoZWFkZXJzIjp7
fX0sInR5cGUiOiJlbmRwb2ludCJ9XX0seyJjb25kaXRpb25zIjpbXSwiZXJy
b3IiOiJGSVBTIGlzIGVuYWJsZWQgYnV0IHRoaXMgcGFydGl0aW9uIGRvZXMg
bm90IHN1cHBvcnQgRklQUyIsInR5cGUiOiJlcnJvciJ9XX0seyJjb25kaXRp
b25zIjpbXSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9pYW0udXMtaXNv
LWVhc3QtMS5jMnMuaWMuZ292IiwicHJvcGVydGllcyI6eyJhdXRoU2NoZW1l
cyI6W3sibmFtZSI6InNpZ3Y0Iiwic2lnbmluZ05hbWUiOiJpYW0iLCJzaWdu
aW5nUmVnaW9uIjoidXMtaXNvLWVhc3QtMSJ9XX0sImhlYWRlcnMiOnt9fSwi
dHlwZSI6ImVuZHBvaW50In1dfSx7ImNvbmRpdGlvbnMiOlt7ImZuIjoic3Ry
aW5nRXF1YWxzIiwiYXJndiI6W3siZm4iOiJnZXRBdHRyIiwiYXJndiI6W3si
cmVmIjoiUGFydGl0aW9uUmVzdWx0In0sIm5hbWUiXX0sImF3cy1pc28tYiJd
fV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOlt7ImZu
IjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUZJUFMifSx0
cnVlXX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpb
eyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0
QXR0ciIsImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJzdXBw
b3J0c0ZJUFMiXX1dfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRp
dGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2lhbS1maXBz
LntSZWdpb259LnNjMnMuc2dvdi5nb3YiLCJwcm9wZXJ0aWVzIjp7ImF1dGhT
Y2hlbWVzIjpbeyJuYW1lIjoic2lndjQiLCJzaWduaW5nTmFtZSI6ImlhbSIs
InNpZ25pbmdSZWdpb24iOiJ1cy1pc29iLWVhc3QtMSJ9XX0sImhlYWRlcnMi
Ont9fSwidHlwZSI6ImVuZHBvaW50In1dfSx7ImNvbmRpdGlvbnMiOltdLCJl
cnJvciI6IkZJUFMgaXMgZW5hYmxlZCBidXQgdGhpcyBwYXJ0aXRpb24gZG9l
cyBub3Qgc3VwcG9ydCBGSVBTIiwidHlwZSI6ImVycm9yIn1dfSx7ImNvbmRp
dGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2lhbS51cy1p
c29iLWVhc3QtMS5zYzJzLnNnb3YuZ292IiwicHJvcGVydGllcyI6eyJhdXRo
U2NoZW1lcyI6W3sibmFtZSI6InNpZ3Y0Iiwic2lnbmluZ05hbWUiOiJpYW0i
LCJzaWduaW5nUmVnaW9uIjoidXMtaXNvYi1lYXN0LTEifV19LCJoZWFkZXJz
Ijp7fX0sInR5cGUiOiJlbmRwb2ludCJ9XX0seyJjb25kaXRpb25zIjpbeyJm
biI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VGSVBTIn0s
dHJ1ZV19LHsiZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoi
VXNlRHVhbFN0YWNrIn0sdHJ1ZV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6
W3siY29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6
W3RydWUseyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQYXJ0aXRp
b25SZXN1bHQifSwic3VwcG9ydHNGSVBTIl19XX0seyJmbiI6ImJvb2xlYW5F
cXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0QXR0ciIsImFyZ3YiOlt7
InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJzdXBwb3J0c0R1YWxTdGFjayJd
fV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W10s
ImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vaWFtLWZpcHMue1JlZ2lvbn0u
e1BhcnRpdGlvblJlc3VsdCNkdWFsU3RhY2tEbnNTdWZmaXh9IiwicHJvcGVy
dGllcyI6e30sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In1dfSx7
ImNvbmRpdGlvbnMiOltdLCJlcnJvciI6IkZJUFMgYW5kIER1YWxTdGFjayBh
cmUgZW5hYmxlZCwgYnV0IHRoaXMgcGFydGl0aW9uIGRvZXMgbm90IHN1cHBv
cnQgb25lIG9yIGJvdGgiLCJ0eXBlIjoiZXJyb3IifV19LHsiY29uZGl0aW9u
cyI6W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNl
RklQUyJ9LHRydWVdfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRp
dGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt0cnVlLHsi
Zm4iOiJnZXRBdHRyIiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0
In0sInN1cHBvcnRzRklQUyJdfV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6
W3siY29uZGl0aW9ucyI6W10sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNv
bmRpdGlvbnMiOlt7ImZuIjoic3RyaW5nRXF1YWxzIiwiYXJndiI6W3sicmVm
IjoiUmVnaW9uIn0sImlhbSJdfV0sImVuZHBvaW50Ijp7InVybCI6Imh0dHBz
Oi8vaWFtLWZpcHMuYW1hem9uYXdzLmNvbSIsInByb3BlcnRpZXMiOnsiYXV0
aFNjaGVtZXMiOlt7Im5hbWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoiaWFt
Iiwic2lnbmluZ1JlZ2lvbiI6InVzLWVhc3QtMSJ9XX0sImhlYWRlcnMiOnt9
fSwidHlwZSI6ImVuZHBvaW50In0seyJjb25kaXRpb25zIjpbeyJmbiI6InN0
cmluZ0VxdWFscyIsImFyZ3YiOlt7InJlZiI6IlJlZ2lvbiJ9LCJhd3MtZ2xv
YmFsIl19XSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9pYW0tZmlwcy5h
bWF6b25hd3MuY29tIiwicHJvcGVydGllcyI6eyJhdXRoU2NoZW1lcyI6W3si
bmFtZSI6InNpZ3Y0Iiwic2lnbmluZ05hbWUiOiJpYW0iLCJzaWduaW5nUmVn
aW9uIjoidXMtZWFzdC0xIn1dfSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5k
cG9pbnQifSx7ImNvbmRpdGlvbnMiOlt7ImZuIjoic3RyaW5nRXF1YWxzIiwi
YXJndiI6W3sicmVmIjoiUmVnaW9uIn0sImlhbS1nb3ZjbG91ZCJdfV0sImVu
ZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vaWFtLnVzLWdvdi5hbWF6b25hd3Mu
Y29tIiwicHJvcGVydGllcyI6eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6InNp
Z3Y0Iiwic2lnbmluZ05hbWUiOiJpYW0iLCJzaWduaW5nUmVnaW9uIjoidXMt
Z292LXdlc3QtMSJ9XX0sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50
In0seyJjb25kaXRpb25zIjpbeyJmbiI6InN0cmluZ0VxdWFscyIsImFyZ3Yi
Olt7InJlZiI6IlJlZ2lvbiJ9LCJhd3MtdXMtZ292LWdsb2JhbCJdfV0sImVu
ZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vaWFtLnVzLWdvdi5hbWF6b25hd3Mu
Y29tIiwicHJvcGVydGllcyI6eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6InNp
Z3Y0Iiwic2lnbmluZ05hbWUiOiJpYW0iLCJzaWduaW5nUmVnaW9uIjoidXMt
Z292LXdlc3QtMSJ9XX0sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50
In0seyJjb25kaXRpb25zIjpbXSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6
Ly9pYW0tZmlwcy57UmVnaW9ufS57UGFydGl0aW9uUmVzdWx0I2Ruc1N1ZmZp
eH0iLCJwcm9wZXJ0aWVzIjp7fSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5k
cG9pbnQifV19XX0seyJjb25kaXRpb25zIjpbXSwiZXJyb3IiOiJGSVBTIGlz
IGVuYWJsZWQgYnV0IHRoaXMgcGFydGl0aW9uIGRvZXMgbm90IHN1cHBvcnQg
RklQUyIsInR5cGUiOiJlcnJvciJ9XX0seyJjb25kaXRpb25zIjpbeyJmbiI6
ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VEdWFsU3RhY2si
fSx0cnVlXX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25z
IjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoi
Z2V0QXR0ciIsImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJz
dXBwb3J0c0R1YWxTdGFjayJdfV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6
W3siY29uZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8v
aWFtLntSZWdpb259LntQYXJ0aXRpb25SZXN1bHQjZHVhbFN0YWNrRG5zU3Vm
Zml4fSIsInByb3BlcnRpZXMiOnt9LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJl
bmRwb2ludCJ9XX0seyJjb25kaXRpb25zIjpbXSwiZXJyb3IiOiJEdWFsU3Rh
Y2sgaXMgZW5hYmxlZCBidXQgdGhpcyBwYXJ0aXRpb24gZG9lcyBub3Qgc3Vw
cG9ydCBEdWFsU3RhY2siLCJ0eXBlIjoiZXJyb3IifV19LHsiY29uZGl0aW9u
cyI6W10sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOlt7
ImZuIjoic3RyaW5nRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiUmVnaW9uIn0s
ImF3cy1nbG9iYWwiXX1dLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2lh
bS5hbWF6b25hd3MuY29tIiwicHJvcGVydGllcyI6eyJhdXRoU2NoZW1lcyI6
W3sibmFtZSI6InNpZ3Y0Iiwic2lnbmluZ05hbWUiOiJpYW0iLCJzaWduaW5n
UmVnaW9uIjoidXMtZWFzdC0xIn1dfSwiaGVhZGVycyI6e319LCJ0eXBlIjoi
ZW5kcG9pbnQifSx7ImNvbmRpdGlvbnMiOlt7ImZuIjoic3RyaW5nRXF1YWxz
IiwiYXJndiI6W3sicmVmIjoiUmVnaW9uIn0sImF3cy1jbi1nbG9iYWwiXX1d
LCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2lhbS5jbi1ub3J0aC0xLmFt
YXpvbmF3cy5jb20uY24iLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hlbWVzIjpb
eyJuYW1lIjoic2lndjQiLCJzaWduaW5nTmFtZSI6ImlhbSIsInNpZ25pbmdS
ZWdpb24iOiJjbi1ub3J0aC0xIn1dfSwiaGVhZGVycyI6e319LCJ0eXBlIjoi
ZW5kcG9pbnQifSx7ImNvbmRpdGlvbnMiOlt7ImZuIjoic3RyaW5nRXF1YWxz
IiwiYXJndiI6W3sicmVmIjoiUmVnaW9uIn0sImF3cy11cy1nb3YtZ2xvYmFs
Il19XSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9pYW0udXMtZ292LmFt
YXpvbmF3cy5jb20iLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hlbWVzIjpbeyJu
YW1lIjoic2lndjQiLCJzaWduaW5nTmFtZSI6ImlhbSIsInNpZ25pbmdSZWdp
b24iOiJ1cy1nb3Ytd2VzdC0xIn1dfSwiaGVhZGVycyI6e319LCJ0eXBlIjoi
ZW5kcG9pbnQifSx7ImNvbmRpdGlvbnMiOlt7ImZuIjoic3RyaW5nRXF1YWxz
IiwiYXJndiI6W3sicmVmIjoiUmVnaW9uIn0sImF3cy1pc28tZ2xvYmFsIl19
XSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9pYW0udXMtaXNvLWVhc3Qt
MS5jMnMuaWMuZ292IiwicHJvcGVydGllcyI6eyJhdXRoU2NoZW1lcyI6W3si
bmFtZSI6InNpZ3Y0Iiwic2lnbmluZ05hbWUiOiJpYW0iLCJzaWduaW5nUmVn
aW9uIjoidXMtaXNvLWVhc3QtMSJ9XX0sImhlYWRlcnMiOnt9fSwidHlwZSI6
ImVuZHBvaW50In0seyJjb25kaXRpb25zIjpbeyJmbiI6InN0cmluZ0VxdWFs
cyIsImFyZ3YiOlt7InJlZiI6IlJlZ2lvbiJ9LCJhd3MtaXNvLWItZ2xvYmFs
Il19XSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9pYW0udXMtaXNvYi1l
YXN0LTEuc2Mycy5zZ292LmdvdiIsInByb3BlcnRpZXMiOnsiYXV0aFNjaGVt
ZXMiOlt7Im5hbWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoiaWFtIiwic2ln
bmluZ1JlZ2lvbiI6InVzLWlzb2ItZWFzdC0xIn1dfSwiaGVhZGVycyI6e319
LCJ0eXBlIjoiZW5kcG9pbnQifSx7ImNvbmRpdGlvbnMiOltdLCJlbmRwb2lu
dCI6eyJ1cmwiOiJodHRwczovL2lhbS57UmVnaW9ufS57UGFydGl0aW9uUmVz
dWx0I2Ruc1N1ZmZpeH0iLCJwcm9wZXJ0aWVzIjp7fSwiaGVhZGVycyI6e319
LCJ0eXBlIjoiZW5kcG9pbnQifV19XX1dfQ==

    JSON
  end
end
