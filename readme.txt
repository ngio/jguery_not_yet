readme test

https://github.com/ngio/jguery_not_yet.git

git push origin master시 [rejected] master -> master (non-fast-forward)이런 에러가 발생하는 경우



해결방법
아래와 같이 git pull 시에 –allow-unrelated-histories 옵션 추가하여 관련 없었던 두 저장소를 병합하도록 허용

git pull origin master --allow-unrelated-histories

jQuery

근데 jquery에서 리액트로 넘어가야 할 것인가?
아직 생각중이다. 

SELECTORS
	Basics
		*
		.class
		element
		#id
		selector1, selectorN, ...
	Hierarchy
		parent &gt; child
		ancestor descendant
		prev + next
		prev ~ siblings
	Basic Filters
		:animated
		:eq()
		:even
		:first
		:gt()
		:header
		:lang()
		:last
		:lt()
		:not()
		:odd
		:root
		:target
	Content Filters
		:contains()
		:empty
		:has()
		:parent
	Visibility Filters
		:hidden
		:visible
	Attribute
		[name|="value"]
		[name*="value"]
		[name~="value"]
		[name$="value"]
		[name="value"]
		[name!="value"]
		[name^="value"]
		[name]
		[name="value"][name2="value2"]
	Child Filters
		:first-child
		:first-of-type
		:last-child
		:last-of-type
		:nth-child()
		:nth-last-child()
		:nth-last-of-type()
		:nth-of-type()
		:only-child
		:only-of-type()
	Forms
		:button
		:checkbox
		:checked
		:disabled
		:enabled
		:focus
		:file
		:image
		:input
		:password
		:radio
		:reset
		:selected
		:submit
		:text

 
...
...


