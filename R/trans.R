#Mianfuntion
#transtrait
#
#!!!!��if you find chinese error encoding, please choose file-reopen with encoding
#
transorg_id<-function(org_id){
  org_id[org_id=="1001"]<-"�ӱ�ʡ���������о���"
  org_id[org_id=="1002"]<-"�ӱ�ʡ���������о���-ת������"
  org_id[org_id=="1003"]<-"�ӱ�ʡ���������о���-�ֻ�Ⱥ����"
  return(org_id)
}
#
#Mianfuntion
#Choose traits
#
traits<-function(trait="tianjian"){
  trait<-switch(trait,
                basic=c("id","org_id","ex_id","place_id","code","fn","mapa"),

                tianjian=c("huaqipingjia","chengshuqipingjia"),
                zhizhu=c("zhugao","dijiagao"),
                zili=c("xiaoquzhong"),
                pinzhi=c("danbai","zhifang"),
                juexuan=c("miaoqipingjia","huaqipingjia","guliqipingjia",
                          "chengshuqipingjia","zhizhupingjia","zilipingjia")
  )
  return(trait)
}