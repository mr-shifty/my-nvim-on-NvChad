
**Мои настройки nvim на основе NvChad**

*Установка:*

Рекомендуется выполнить команды, чтобы очистить старые конфигурации:

```bash
 rm -rf ~/.config/nvim # или заархивировать
 ``` 
 ```bash
  rm -rf ~/.local/share/nvim
  ```

Установить [NvChad](https://nvchad.com/docs/quickstart/install)

```bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

Склонировать конфигурацию.

**Весь конфиг должен находиться в папке custom. При клонировании папка создается автоматически.**

```bash
git clone https://github.com/mr-shifty/my-nvim-on-NvChad.git ~/.config/nvim/lua/custom --depth 1
```

Запустить nvim и выполнить команду для обновления и загрузки плагинов.  

`NvChadUpdate`

Наслаждаться кайфовым конфигом)

