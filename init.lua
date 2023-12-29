-- Инициализация окружения OpenComputers
local component = require("component")
local computer = require("computer")
local shell = require("shell")

-- Проверка наличия компонентов
if not component.isAvailable("gpu") or not component.isAvailable("screen") then
    error("Графический компонент не доступен")
end

-- Инициализация графической части, если она доступна
local gpu = component.gpu
local w, h = gpu.getResolution()
gpu.setResolution(w, h)

-- Очистка экрана
gpu.fill(1, 1, w, h, " ")

-- Пример использования print()
print("Операционная система MyOS запущена")

-- Пример команды
shell.execute("ls")
