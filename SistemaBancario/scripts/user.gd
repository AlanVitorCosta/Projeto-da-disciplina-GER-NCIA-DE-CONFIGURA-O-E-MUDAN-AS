tool
extends Control

export(Resource) var accountData setget _set_account
	
func _set_account(data) -> void:
	accountData = data
	update()

func _draw() -> void:
	if accountData:
		$HBoxContainer/VBoxContainer2/LabelAccountId.text = str(accountData.accountId)
		#$HBoxContainer/VBoxContainer2/LabelBalanceAmount.text = "R$ " + str(accountData.balanceAmmount)
		$HBoxContainer/VBoxContainer2/LabelBalanceAmount.text = "R$  " + "%.2f" % accountData.balanceAmmount

	else:
		$HBoxContainer/VBoxContainer2/LabelAccountId.text = " "
		$HBoxContainer/VBoxContainer2/LabelBalanceAmount.text = " "
