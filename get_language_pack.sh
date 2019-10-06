#!/bin/bash
mkdir voices
cd voices
Samantha="http://swcdn.apple.com/content/downloads/31/08/031-11580/yl6kwlywi3fnk7dw5l440jya4w5x6cgrj4/MLV_en_US_samantha.pkg"
Anna="http://swcdn.apple.com/content/downloads/25/38/031-11390/jyv1losfgofn70cfds6w9c2xxkj6ea1kgn/MLV_de_DE_anna.pkg"
Daniel="http://swcdn.apple.com/content/downloads/01/60/031-11670/i5e5pj4cn5oy6nr1z129d415t75pc11bmf/MLV_en_GB_daniel.pkg"
Thomas="ttp://swcdn.apple.com/content/downloads/47/22/031-11693/09kxdzz6urb2jhqd438daigpq93n0rxg1i/MLV_fr_FR_thomas.pkg"
Amelie="http://swcdn.apple.com/content/downloads/32/16/031-29337/rvz49jpfk09y3nmmh4w5ric4t0xfhzoyoo/MultiLingualVoice_fr_CA_amelie.pkg"
Karen="ttp://swcdn.apple.com/content/downloads/38/34/031-11480/zm58e6jsllj40uehdcks7fkmds2i9o6iv5/MLV_en_AU_karen.pkg"
Moira="http://swcdn.apple.com/content/downloads/12/30/031-11696/lea93eo0146c5o59vjy9kwa3v0xhnmt1wj/MLV_en_IE_moira.pkg"
Fiona="http://swcdn.apple.com/content/downloads/58/09/031-29381/elohs1hjm921a220ly2gzv5azdlm88cigy/MLVUpdate_en_scotland_fiona.pkg"
Tom="http://swcdn.apple.com/content/downloads/37/45/031-29440/cy2gbk2fpbcppzt0qw7hr38equhkdd2ttf/MultiLingualVoice_en_US_tom.pkg"
Allison="http://swcdn.apple.com/content/downloads/38/34/031-26101/pxikgehnvjg15s2p0jy9mcqpb5gjyuzl5k/MLVUpdate_en_US_allison.pkg"
Kate="http://swcdn.apple.com/content/downloads/46/57/031-29409/etpbacnsq97v7tn7wiqrx0oaxkpkisnus9/MultiLingualVoice_en_GB_kate.pkg"
Satu="http://swcdn.apple.com/content/downloads/35/59/031-29327/69eiok26zcl4y2uhj7b0g8c2rld9h9d2kp/MultiLingualVoice_fi_FI_satu.pkg"
Audrey="http://swcdn.apple.com/content/downloads/16/50/031-29399/2evmr1hmtkbuuoic6edb4fj8da1ciykbb8/MLVUpdate_fr_FR_audrey.pkg"
Aurelie="http://swcdn.apple.com/content/downloads/47/23/031-29386/o0pr75tsoomqn2gksluga4bbcuao5ugdzv/MLVUpdate_fr_FR_aurelie.pkg"
Nicolas="http://swcdn.apple.com/content/downloads/17/28/031-29436/4kxyz5vev9shy2f5guvkm8548rn1n0omhm/MultiLingualVoice_fr_CA_nicolas.pkg"
Melina="http://swcdn.apple.com/content/downloads/24/02/031-29389/vbrwjp9ymfddlybmesnf66gyn6d5ni920z/MultiLingualVoice_el_GR_melina.pkg"
Luca="http://swcdn.apple.com/content/downloads/03/47/031-29342/6tfr5l9uhpzsgeot3c4d7b2v3ir37royko/MultiLingualVoice_it_IT_luca.pkg"
Alice="http://swcdn.apple.com/content/downloads/37/54/031-26084/000hk07x7imylighbkyodyvu95d86j5wdo/MultiLingualVoice_it_IT_alice.pkg"
Xander="http://swcdn.apple.com/content/downloads/21/30/031-29330/5uuzcgvsskfoz1wgm9a7yuxgm50h3epxeg/MLVUpdate_nl_NL_xander.pkg"
Henrik="http://swcdn.apple.com/content/downloads/58/01/031-29360/b2urz5xj75gooi2x5j4yk7e8gwzd4y0hd9/MultiLingualVoice_no_NO_henrik.pkg"
Nora="http://swcdn.apple.com/content/downloads/02/59/031-29433/3m53kd05d63arhhmx8ij7qsq0fc9j5hq0q/MLVUpdate_no_NO_nora.pkg"
Zosia="http://swcdn.apple.com/content/downloads/51/60/031-29407/xdvm4f1nskojvn63ejp5mdrpoggbbnu7ul/MLVUpdate_pl_PL_zosia.pkg"
Joana="http://swcdn.apple.com/content/downloads/09/29/031-29396/nqds1hns6fg2o66t8snbdeshv7dc2tquct/MLVUpdate_pt_PT_joana.pkg"
Yuri="http://swcdn.apple.com/content/downloads/57/38/031-29322/ayn7w001cza2u0hk6b84qlijz2e2fd4sjt/MLVUpdate_ru_RU_yuri.pkg"
Milena="http://swcdn.apple.com/content/downloads/33/19/031-22904/guq65rotjmmke277rz94q5qsiwsxbycwkc/MLVUpdate_ru_RU_milena.pkg"
Alva="http://swcdn.apple.com/content/downloads/26/04/031-11476/rj3hkevk8u7p1me4epmf12q4gca1tk37rq/MLV_sv_SE_alva.pkg"
Laura="http://swcdn.apple.com/content/downloads/25/25/031-11383/iuyu10lmznf19emz1e6l3fsqjypwb3ke7y/MLV_sk_SK_laura.pkg"
Jorge="http://swcdn.apple.com/content/downloads/39/32/031-26124/dxwxcovmkxsa9u0fsvb29lavsg8lh9ruc0/MLVUpdate_es_ES_jorge.pkg"
Monica="http://swcdn.apple.com/content/downloads/55/31/031-29426/w0067w2wo6vs7mpn03zqykivkkr4ldnqcs/MultiLingualVoice_es_ES_monica.pkg"
Zuzana="http://swcdn.apple.com/content/downloads/01/22/031-11566/4yqsqbld0c4tnfn8bdd2r9bpps6yyobhbl/MLV_cs_CZ_zuzana.pkg"
Yelda="http://swcdn.apple.com/content/downloads/55/11/031-29425/c6z0kqtv3c9k2qpfi6xu4dc5n83niaqtbh/MLVUpdate_tr_TR_yelda.pkg"
Mariska="http://swcdn.apple.com/content/downloads/32/23/031-29395/jvbvx3mcg63afdlsvvp5c2b6kc8myt1k3v/MLVUpdate_hu_HU_mariska.pkg"
downloadlink=`eval echo \\$$1`
curl -L -O $downloadlink
for f in *.pkg ; do sudo installer -pkg "$f" -target / ; done
cd ..
