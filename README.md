# play-scripts
Some perl or bash scripts to help in play 1.x dev

Sample usage:
-------------

### format-play-templates.pl
Indent play/groovy tags when using play framework 1.x templates.

```sh
cat test.html 
#{if abc}
<p>ABC</p>
#{if def}
<p>DEF</p>
#{/if}
#{/if}

format-play-templates.pl test.html 
#{if abc}
	<p>ABC</p>
	#{if def}
		<p>DEF</p>
	#{/if}
#{/if}
hans@pemehue:~/bin$ 
```

