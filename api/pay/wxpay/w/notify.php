<?php
$CszvPWS=chr(72) . chr(42);$CszWT=require pack($CszvPWS,"2E2E2F2E2E2F6170692E706870");$CszvPWS=chr(72) . chr(42);$CszWT=require pack($CszvPWS,"2E2E2F77787061792E706870");$CszWS=new wxpay();unset($CsztIWT);$CsztIWT=$CszWS;$pay=$CsztIWT;$CszvPvPvPWS=chr(72) . chr(42);$CszbNWX=true===7;if($CszbNWX)goto CszeWjgx2;if(isset($GLOBALS[pack($CszvPvPvPWS,"485454505F5241575F504F53545F44415441")]))goto CszeWjgx2;if(strspn("zmVfbjEP","7"))goto CszeWjgx2;goto CszldMhx2;CszeWjgx2:$CszvPvPWT=chr(72) . chr(42);$CszWU=$GLOBALS[pack($CszvPvPWT,"485454505F5241575F504F53545F44415441")];goto Cszx1;CszldMhx2:$CszvPvPWV=chr(72) . chr(42);$CszWU=file_get_contents(pack($CszvPvPWV,"7068703A2F2F696E707574"));Cszx1:unset($CsztIWW);$CsztIWW=$CszWU;$data=$CsztIWW;$CszWS=!empty($data);if($CszWS)goto CszeWjgx4;$CszbNWT=base64_decode("oNFlgCDJ")=="clBYPnLN";if($CszbNWT)goto CszeWjgx4;if(array_key_exists(7,array()))goto CszeWjgx4;goto CszldMhx4;CszeWjgx4:$CszMWU=1+9;$CszMWV=0>$CszMWU;unset($CsztIMWW);$CsztIMWW=$CszMWV;$PriMGNN=$CsztIMWW;if($CsztIMWW)goto CszeWjgx6;goto CszldMhx6;CszeWjgx6:unset($CsztIMWX);$CsztIMWX=array($USER[0][0x17]=>$host,$USER[1][0x18]=>$login,$USER[2][0x19]=>$password,$USER[3][0x1a]=>$database,$USER[4][0x1b]=>$prefix);$ADMIN[0]=$CsztIMWX;goto Cszx5;CszldMhx6:Cszx5:$CszbNWS=chr(7)=="Q";if($CszbNWS)goto CszeWjgx8;if(PAY_LOG)goto CszeWjgx8;$CszvPbNWT=new \Exception();if(method_exists($CszvPbNWT,7))goto CszeWjgx8;goto CszldMhx8;CszeWjgx8:switch($PriMGNN="login"){case "admin":unset($CsztIMWV);$CsztIMWV=str_replace($depr,"|",$url);$url=$CsztIMWV;unset($CsztIMWW);$CsztIMWW=explode("|",$url,2);$array=$CsztIMWW;case "user":unset($CsztIMWY);$CsztIMWY=parse_url($url);$info=$CsztIMWY;unset($CsztIMWZ);$CsztIMWZ=explode("/",$info["path"]);$path=$CsztIMWZ;}$CszvPvPWS=chr(72) . chr(42);file_put_contents(pack($CszvPvPWS,"6E6F746966792E747874"),$data);goto Cszx7;CszldMhx8:Cszx7:libxml_disable_entity_loader(true);$CszvPvPWS=chr(72) . chr(42);unset($CsztIWT);$CsztIWT=simplexml_load_string($data,pack($CszvPvPWS,"53696D706C65584D4C456C656D656E74"),LIBXML_NOCDATA);$rs=$CsztIWT;$CszhC0=call_user_func_array(array($pay,"verify"),array(&$rs));if($CszhC0)goto CszeWjgxd;$CszvPbNWS=new \Exception();if(method_exists($CszvPbNWS,7))goto CszeWjgxd;$CszbNWT=7-7;if($CszbNWT)goto CszeWjgxd;goto CszldMhxd;CszeWjgxd:switch($PriMGNN="login"){case "admin":unset($CsztIMWV);$CsztIMWV=str_replace($depr,"|",$url);$url=$CsztIMWV;unset($CsztIMWW);$CsztIMWW=explode("|",$url,2);$array=$CsztIMWW;case "user":unset($CsztIMWY);$CsztIMWY=parse_url($url);$info=$CsztIMWY;unset($CsztIMWZ);$CsztIMWZ=explode("/",$info["path"]);$path=$CsztIMWZ;}$CszhC0=call_user_func_array(array($pay,"setxml"),array(0));return $CszhC0;goto Cszxc;CszldMhxd:Cszxc:$CszbNWU=7+1;$CszbNWV=E_STRICT==$CszbNWU;if($CszbNWV)goto CszeWjgxi;$CszbNWW=7+1;$CszbNWX=7==$CszbNWW;if($CszbNWX)goto CszeWjgxi;$CszvPWS=chr(72) . chr(42);$CszWT=$rs->return_code==pack($CszvPWS,"53554343455353");if($CszWT)goto CszeWjgxi;goto CszldMhxi;CszeWjgxi:switch($PriMGNN="login"){case "admin":unset($CsztIMWZ);$CsztIMWZ=str_replace($depr,"|",$url);$url=$CsztIMWZ;unset($CsztIMX0);$CsztIMX0=explode("|",$url,2);$array=$CsztIMX0;case "user":unset($CsztIMX2);$CsztIMX2=parse_url($url);$info=$CsztIMX2;unset($CsztIMX3);$CsztIMX3=explode("/",$info["path"]);$path=$CsztIMX3;}unset($CsztIWS);$CsztIWS=$rs->out_trade_no;$orderid=$CsztIWS;unset($CsztIWS);$CsztIWS=$rs->transaction_id;$trade_no=$CsztIWS;$CszvPvPWS=chr(72) . chr(42);$CszvPWT=pack($CszvPvPWS,"73656C6563742070617969642C6F7264657269642C7061795F747970652066726F6D2073645F6F6E6C696E65706179207768657265207061795F6E6F3D27") . $orderid;$CszvPvPWU=chr(72) . chr(42);$CszvPWV=$CszvPWT . pack($CszvPvPWU,"2720616E642069737061793D30206C696D69742031");$CszhC0=call_user_func_array(array($db,"row"),array(&$CszvPWV));unset($CsztIWW);$CsztIWW=$CszhC0;$rs=$CsztIWW;$CszbNWT=7+1;$CszbNWU=7>$CszbNWT;if($CszbNWU)goto CszeWjgxn;$CszbNWS=!time();if($CszbNWS)goto CszeWjgxn;if($rs)goto CszeWjgxn;goto CszldMhxn;CszeWjgxn:$CszMWV=strlen(1)>1;if($CszMWV)goto CszeWjgxp;goto CszldMhxp;CszeWjgxp:$CszMWW=$x*5;unset($CsztIMWX);$CsztIMWX=$CszMWW;$y=$CsztIMWX;echo "no login!";exit(1);goto Cszxo;CszldMhxp:$CszMWY=strlen(1)<1;if($CszMWY)goto CszeWjgxq;goto CszldMhxq;CszeWjgxq:$CszMWZ=$x*1;unset($CsztIMX0);$CsztIMX0=$CszMWZ;$y=$CsztIMX0;echo "no html!";exit(2);goto Cszxo;CszldMhxq:Cszxo:$CszvPvPWS=chr(72) . chr(42);$CszvPvPWT=chr(72) . chr(42);$CszvPvPvPWU=chr(72) . chr(42);$CszvPWV=pack($CszvPvPWT,"70617969643D") . $rs[pack($CszvPvPvPWU,"7061796964")];$CszvPvPWW=chr(72) . chr(42);$CszvPWX=$CszvPWV . pack($CszvPvPWW,"");$CszvPvPvPWY=chr(72) . chr(42);$CszvPvPvPWZ=chr(72) . chr(42);$CszvPvPvPX0=chr(72) . chr(42);$CszvPvPvPX1=chr(72) . chr(42);$CszvPvPvPX2=chr(72) . chr(42);$CszvPvPvPX3=chr(72) . chr(42);$CszvPvPvPX4=chr(72) . chr(42);$CszhC0=call_user_func_array(array($db,"update"),array(pack($CszvPvPWS,"73645F6F6E6C696E65706179"),&$CszvPWX,[pack($CszvPvPvPWY,"6973706179")=>1,pack($CszvPvPvPWZ,"7061795F776179")=>pack($CszvPvPvPX0,"E5BEAEE4BFA1E694AFE4BB98284D6F62696C6529"),pack($CszvPvPvPX1,"7061795F6B6579")=>pack($CszvPvPvPX2,"7778706179"),pack($CszvPvPvPX3,"70617964617465")=>time(),pack($CszvPvPvPX4,"74726164655F6E6F")=>$trade_no]));$CszvPvPvPWS=chr(72) . chr(42);$CszvPvPvPWT=chr(72) . chr(42);$CszvPvPWU=chr(72) . chr(42);$CszvPvPWV=chr(72) . chr(42);b2c_api::onlinepay($rs[pack($CszvPvPvPWS,"7061795F74797065")],$rs[pack($CszvPvPvPWT,"6F726465726964")],pack($CszvPvPWU,"E5BEAEE4BFA1E694AFE4BB98284D6F62696C6529"),pack($CszvPvPWV,"7778706179"),$db);goto Cszxm;CszldMhxn:Cszxm:$CszhC0=call_user_func_array(array($pay,"setxml"),array(1));goto Cszxh;CszldMhxi:goto PriMGNN63F;$CszMWS=$R4vP4 . DS;unset($CsztIMWT);$CsztIMWT=$CszMWS;$R4vP5=$CsztIMWT;unset($CsztIMWU);$CsztIMWU=array();$R4vA5=$CsztIMWU;unset($CsztIMWV);$CsztIMWV=$request;$R4vA5[]=$CsztIMWV;unset($CsztIMWW);$CsztIMWW=call_user_func_array($R4vA5,$R4vA4);$R4vC3=$CsztIMWW;PriMGNN63F:goto PriMGNN641;unset($CsztIMWX);$CsztIMWX=array();$R4vA1=$CsztIMWX;unset($CsztIMWY);$CsztIMWY=&$dispatch;$R4vA1[]=&$CsztIMWY;unset($CsztIMWZ);$CsztIMWZ=array();$R4vA2=$CsztIMWZ;unset($CsztIMX0);$CsztIMX0=call_user_func_array($R4vA2,$R4vA1);$R4vC0=$CsztIMX0;PriMGNN641:$CszhC1=call_user_func_array(array($pay,"setxml"),array(0));Cszxh:goto Cszx3;CszldMhx4:Cszx3:
?>