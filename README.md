# play-scripts
Some perl or bash scripts to help in play 1.x dev

Sample usage:

cat bin/test.html
 #{if abc}
`<p>ABC</p>`
 #{if def}
`<p>DEF</p>`
 #{/if}
 #{/if}

format-play-templates.pl bin/test.html 
 #{if abc}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;p&gt;ABC&lt;/p&gt;
&nbsp;&nbsp;&nbsp;&nbsp;	#{if def}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		&lt;p&gt;DEF&lt;/p&gt;
&nbsp;&nbsp;&nbsp;&nbsp;	#{/if}
 #{/if}


