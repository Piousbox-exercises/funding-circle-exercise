
require 'multiplication_table'

def puts a
  ; # do nothing, suppress output.
end

describe MultiplicationTable do

  before :each do
    ;
  end

  it '#sanity' do
    MultiplicationTable.methods.include?( :print ).should eql true
  end

  it '#print' do
    result = MultiplicationTable.print( 2 )
    result.should eql( "\t2\t3\r\n2\t4\t6\r\n3\t6\t9" )
  end
  
end

