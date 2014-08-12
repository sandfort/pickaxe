# Thread is executed when it is constructed.
# In this example, the loop continues to make more threads while each thread
# runs in the background.
# Notes:
# - The page_to_fetch variable must be passed into the Thread constructor, from
#   which it is used as a block variable. Otherwise, all threads would be using
#   the same page_to_fetch.
# - This example uses the print method with a \n rather than the puts method,
#   the reason being that print is atomic and puts is not.
# - Thread#join is used to force Ruby to block until the thread completes.

require 'net/http'

pages = %w{ www.rubycentral.org slashdot.dorg www.google.com }

threads = pages.map do |page_to_fetch|
  Thread.new(page_to_fetch) do |url|
    http = Net::HTTP.new(url, 80)
    print "Fetching #{url}\n"
    resp = http.get('/')
    print "Got #{url}: #{resp.message}\n"
  end
end

threads.each {|thr| thr.join }

