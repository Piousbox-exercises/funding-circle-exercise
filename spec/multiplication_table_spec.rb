
require 'multiplication_table'

describe MultiplicationTable do

  it '#sanity' do
    MultiplicationTable.methods.include?( :print ).should eql true
  end

  it '#print' do
    result = MultiplicationTable.print( 2 )
    result.should eql( "\t2\t3\r\n2\t4\t6\r\n3\t6\t9" )
  end
  
end

