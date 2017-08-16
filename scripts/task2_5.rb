def sanitize_password!(s)
  s.gsub!(/password:(.*)$/, "password:******")
end