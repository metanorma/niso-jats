it = Nokogiri::XML::Builder.new
it.comment(desc: "comment") do
  puts "executed"
  it.text("hello")
end
