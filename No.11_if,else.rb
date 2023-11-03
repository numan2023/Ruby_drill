指定された数値の範囲による条件と真偽値による条件を組み合わせて処理を行うプログラム

問題
以下の要件を満たす in1to10メソッドを実装しましょう。

第一引数のnumが1以上かつ10以下の範囲であればTrueを出力すること
第二引数のoutside_modeがTrueの場合は、第一引数numが条件範囲外でもTrueを出力すること
それ以外はFalseを出力すること
雛形
def in1to10(num, outside_mode)
  # ここに条件式を記述する
end

# 呼び出し例
in1to10(5,false)
in1to10(11,false) 
in1to10(11,true) 
出力例
in1to10(5,false) →True
in1to10(11,false) →False
in1to10(11,true) →True

ヒント
 論理演算子
論理演算子とは、式の「真（True）」と「偽（False）」の確認や演算を行う際に用いられる演算子（記号、符号）のことです。以下のように条件分岐を実装する際、条件式に複数の条件を組み合わせるために用いられます。

if ( 【複数の条件が含まれる条件式】 )

end
複数の条件式を組み合わせた複雑な条件式を記述するために論理演算子&&と||を使います。

条件式aと条件式bを組み合わせる場合は以下のように記述します。

# aもbもtrueの場合にtrue
a && b 

# aかbのどちらかがtrueの場合にtrue
a || b 
なおRubyの論理演算子では、左辺から右辺に条件式を評価します。もし式全体の評価が確定した場合は、その時点で残りの評価を行いません。

したがって、上の例で言えば、a&&bにおいてaがfalseの時点で全体がfalseと確定するため、bの判定は行いません。また、a||bでは、aがtrueの時点で全体がtrueと確定するため、bの判定は行いません。

----------------

def in1to10(num, outside_mode)
  if (num >= 1 && num <= 10) || outside_mode
    puts "True"
  else
    puts "False"
  end
end

in1to10(5,false)
in1to10(11,false)
in1to10(11,true)