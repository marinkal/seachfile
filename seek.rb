# encoding: cp866

def seek filename, path
        

   arr = Dir.entries path
    #puts "full massiv #{arr.inspect}" 
    #arr = arr.slice(start,arr.length-start)

    if arr
    
    files = arr.select{|value| File.file?("#{path}/#{value}")}
    dirs = arr.select{|value| !File.file?("#{path}/#{value}") && value[0]!="."}
      
        #puts arr.inspect
	#gets
 	#puts files.inspect
	#gets
#	puts dirs.inspect 
#	gets
      
	files.each do |value|
	#puts "#{path}/#{value}"
              #gets
	  	#puts "#{value}==#{filename}"
	  	if value == filename
		 puts "���� �����㦥� � ����� #{path}"
		 exit
	        end
		#else
	 	#seek(filename,"#{path}/#{value}")  if File.directory? ("#{path}/#{value}")
	    end
	
	
	 
	dirs.each do |value|
		
		seek(filename,"#{path}/#{value}")  if File.writable?"#{path}/#{value}" 
	end
	end
	return
 end
	  
  filename=''
#filename='marina.txt'
while filename=='' do
	print '����� 䠩� �㤥� �᪠�� (�ਬ�� 1.txt): '
	filename = gets.strip.chomp
end

seek(filename,'C:/')


                   