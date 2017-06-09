# play-scripts
Some perl or bash scripts to help in play 1.x dev

Sample usage:

```sh
hans@pemehue:~/bin$ cat test.html 
#{if abc}
<p>ABC</p>
#{if def}
<p>DEF</p>
#{/if}
#{/if}
hans@pemehue:~/bin$ format-play-templates.pl test.html 
#{if abc}
	<p>ABC</p>
	#{if def}
		<p>DEF</p>
	#{/if}
#{/if}
hans@pemehue:~/bin$ 
```
