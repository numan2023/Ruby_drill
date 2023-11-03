指定された2つの真偽値によって処理が異なるプログラムを実装

問題
Aさんは普段土日が休みの仕事に就いており、休みの日は遅くまで寝ていたいと考えています。
そこで、Aさんのために「その日が遅くまで寝ていられるかどうか」を判断する、sleep_inメソッドを実装しましょう。

第一引数の値では「平日かどうか」、第二引数の値では「休暇かどうか」をtrueまたはfalseを用いて以下のように表します。

第一引数がtrue（平日である）または、第二引数がtrue（休暇である）の場合はtrueと出力する
第一引数がfalse（平日でない）または、第二引数がtrue（休暇である）の場合はtrueと出力する
第一引数がtrue（平日である）または、第二引数がfalse（休暇でない）の場合はfalseと出力する
第一引数がfalse（平日でない）または、第二引数がfalse（休暇でない）の場合はtrueと出力する

出力例
sleep_in(false, false) → true
sleep_in(true, false) → false
sleep_in(false, true) → true

-------------------------------------

def sleep_in(is_weekday, is_vacation)
  if (is_weekday != true) || (is_vacation == true)
    puts true
  else
    puts false
  end
end

sleep_in(false, false)
-------------------------------------