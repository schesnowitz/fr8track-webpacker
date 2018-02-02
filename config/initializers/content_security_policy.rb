# Be sure to restart your server when you modify this file.

# Define an application-wide content security policy
# For further information see the following documentation
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy

# Rails.application.config.content_security_policy do |p|
#   p.font_src    :self, :https, :data
#   p.img_src     :self, :https, :data
#   p.object_src  :none
#   p.style_src   :self, :https, :unsafe_inline

#   if Rails.env.development?
#     p.script_src :self, :https, :unsafe_eval
#     p.default_src :self, :https, :unsafe_eval
#     p.connect_src :self, :https, 'http://localhost:8080', 'ws://localhost:8080'
#   else
#     p.script_src :self, :https
#     p.default_src :self, :https
#   end
# end

# Report CSP violations to a specified URI
# For further information see the following documentation:
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy-Report-Only
# Rails.application.config.content_security_policy_report_only = true
# yarn upgrade [package]@[version]

