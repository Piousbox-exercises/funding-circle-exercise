require 'prime_utils'

class MultiplicationTable

  def self.sanity
  end

  def self.print n = 2
    primes = PrimeUtils.n_primes( n )
    output = ''

    header = "\t"
    primes.each do |p|
      header += p.to_s + "\t"
    end
    header = header[0..header.length-2]
    output += header + "\r\n"

    primes.each do |p|
      line = p.to_s + "\t"
      primes.each do |pp|
        line += (p*pp).to_s + "\t"
      end
      line = line[0..line.length-2]
      output += line + "\r\n"
    end
    output = output[0..output.length-3]
    puts output
    return output
  end


end


