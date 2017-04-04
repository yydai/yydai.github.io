pub_data	= `date +'%y.%m.%d %H:%M:%S'`
messages	= "Auto published by yydai at $(pub_data)"


publish:
	@echo "======================================"
	@echo "Begin publish the site, please wait..."
	@echo "======================================"
	@git add .
	@git commit -m $(messages)
	@git pull
	@git push origin
	@echo "===============Success================"
