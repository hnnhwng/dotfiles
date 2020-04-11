# Defined in - @ line 1
function remote --description 'alias remote=sshfs coop@23.96.56.254:/home/coop/piinpoint.com /home/hannah/piinpoint'
	sshfs coop@23.96.56.254:/home/coop/piinpoint.com /home/hannah/piinpoint $argv;
end
