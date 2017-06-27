module LookAndSay
  class LookAndSaySequence
    def initialize(seed)
      raise LookAndSay::InvalidSeedError if seed.to_i < 1
      @seed = seed
    end
    
    def each
      return enum_for(:each) unless block_given?
      
      sequence_value = @seed
      yield sequence_value
      
      loop do
        sequence_value = sequence_value.to_s.gsub(/(.)\1*/){|s| s.size.to_s + s[0]}
        yield sequence_value.to_i
      end
    end
  end
end