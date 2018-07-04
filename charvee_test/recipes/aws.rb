
puts 'install awscli'

package 'python3' do 
	command "pip install awscli"
	action :rung
end