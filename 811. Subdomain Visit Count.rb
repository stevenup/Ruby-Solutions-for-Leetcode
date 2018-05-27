# @param {String[]} cpdomains
# @return {String[]}
def subdomain_visits(cpdomains)
  result = []
  counter = Hash.new(0)
  cpdomains.each do |cp|
    subdomains = []
    times, domains = cp.split(' ')
    domains = domains.split('.')
    domains.each_with_index do |d, i|
      subdomains[i] = "#{subdomains[i-1]}".prepend("#{domains[-(i+1)]}.").chomp('.')
      # result << { subdomains[i] => times.to_i }
    end
    subdomains.each do |ele|
      counter[ele] += times.to_i
    end
  end
  counter.to_a.map { |e| "#{e[1]} #{e[0]}" }
  # result = result.inject{|arr1, arr2| arr1.merge( arr2 ){|k, old_v, new_v| old_v + new_v }}
  # result = result.values.zip(result.keys).map {|ele| ele.join(' ') }
end

# cpdomains = ["9001 discuss.leetcode.com"]
cpdomains = ["900 google.mail.com", "5r0 yahoo.com", "1 intel.mail.com", "5 wiki.org"]
p subdomain_visits(cpdomains)
