function fish_prompt --description 'Write out the prompt'
	set -l last_status $status

	if not set -q __fish_prompt_normal
		set -g __fish_prompt_normal (set_color normal)
	end

	printf '[%s@%s:%s%s%s %s] ' $USER (hostname -s) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) (__fish_git_prompt)

	if not test $last_status -eq 0
	set_color $fish_color_error
	end

	echo -n '$ '

end
