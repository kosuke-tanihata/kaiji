<kaiji>
<h3> { title } </h3>
<ul>
  <li each={ item, i in items }> { item}</li>
</ul>

<form onsubmit={ add }>
  <input>
  <button>追加 #{ items.length + 1}</button>
</form>

<script>
  this.items = []
  this.title = "ライオットのチュートリアルだよ"
  add(e){
    var input = e.target[0]
    var tmp = "";
    for (var i = 0; i < input.value.length; i++) {
      tmp+= input.value.charAt(i)+ "゛"
    }

    this.items.push(tmp)
    input.value = '入力してね'
  }
</script>

</kaiji>