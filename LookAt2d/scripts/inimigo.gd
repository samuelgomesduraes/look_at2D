extends KinematicBody2D
#neste exemplo de look at 
#estou mostrando 3 formas de fazer 
#as funcoes estao comentadas no process pra testa e so tira o comentario 
var rotationSpeed=5.0
onready var jogador=get_parent().get_node("jogador")
var alvo:Vector2=position
func _ready():
	#formas de calcular a distancia entre dois objetos na cena
	var distancia1=jogador.global_position-global_position
	var distancia2=jogador.global_position.distance_to(global_position)
	print("distancia entre o inimigo e jogador",distancia1)
	print("jogador na posicao global",jogador.global_position)#mostrando a posicao do objeto jogador
	
func _process(delta):
	var olhar=look_at(jogador.global_position)
	olhe_para()
#	olhe_para1()
#	olhe_para2()
	
func olhe_para():
	#alvo=jogador.global_position
					#alvo atual
	var posicao_alvo=jogador.global_position-global_position#= distancia entre o inimigo e o jogador
	var angulo=posicao_alvo.angle()
	rotation=lerp_angle(rotation,angulo,0.05)
func olhe_para1():
	var alvo=jogador.global_position-global_position
	var angulo=alvo.angle()
	rotation=angulo
	
func olhe_para2():
	rotation=jogador.global_position.angle_to_point(global_position)
