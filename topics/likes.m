\ File buat test

@: likes loves asku
likes: science math|mathematic|mathematics chem|chemistry
loves: good_at love like
asku: you u are_u do_u are_you do_you u're u_are you're you_are
keywords: sorry find apart lovely

search: key-search

{{
"come up to meet you"
"tell you i'm sorry"
"you don't know how lovely you're"
"i had to find you"
"tell you i need you"
"tell you i set you apart"
}} +key-search

Q: $loves $x.@likes
A: $x :science same? % Yep, i $loves science, can you guess what branch of science am i good at?
A: $x :chem same? % Yupp i $loves chemistry. Moreover i memorize the periodic table
A: Yes i do ; I $loves $x
--

Q: $asku $loves $x
A: no, i'm not ; no, i'm bad at $x ; no i'm not $loves $x
L: Unknown loves $x
--

Q: $keywords $_ scientist
A: the lyrics are: ${ $keywords key-search }
--

Q: say wkwkwkw
A: <h1> wkwkwkw </h1>
--