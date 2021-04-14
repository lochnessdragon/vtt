# Alternative GNU Make workspace makefile autogenerated by Premake

ifndef config
  config=debug_x64
endif

ifndef verbose
  SILENT = @
endif

ifeq ($(config),debug_x64)
  VTT_config = debug_x64
  GLFW_config = debug_x64
  BGFX_config = debug_x64
  BIMG_config = debug_x64
  BX_config = debug_x64

else ifeq ($(config),debug_xbox)
  VTT_config = debug_xbox
  GLFW_config = debug_xbox
  BGFX_config = debug_xbox
  BIMG_config = debug_xbox
  BX_config = debug_xbox

else ifeq ($(config),debug_playstation)
  VTT_config = debug_playstation
  GLFW_config = debug_playstation
  BGFX_config = debug_playstation
  BIMG_config = debug_playstation
  BX_config = debug_playstation

else ifeq ($(config),debug_macos)
  VTT_config = debug_macos
  GLFW_config = debug_macos
  BGFX_config = debug_macos
  BIMG_config = debug_macos
  BX_config = debug_macos

else ifeq ($(config),debug_ios)
  VTT_config = debug_ios
  GLFW_config = debug_ios
  BGFX_config = debug_ios
  BIMG_config = debug_ios
  BX_config = debug_ios

else ifeq ($(config),debug_linux_x64)
  VTT_config = debug_linux_x64
  GLFW_config = debug_linux_x64
  BGFX_config = debug_linux_x64
  BIMG_config = debug_linux_x64
  BX_config = debug_linux_x64

else ifeq ($(config),release_x64)
  VTT_config = release_x64
  GLFW_config = release_x64
  BGFX_config = release_x64
  BIMG_config = release_x64
  BX_config = release_x64

else ifeq ($(config),release_xbox)
  VTT_config = release_xbox
  GLFW_config = release_xbox
  BGFX_config = release_xbox
  BIMG_config = release_xbox
  BX_config = release_xbox

else ifeq ($(config),release_playstation)
  VTT_config = release_playstation
  GLFW_config = release_playstation
  BGFX_config = release_playstation
  BIMG_config = release_playstation
  BX_config = release_playstation

else ifeq ($(config),release_macos)
  VTT_config = release_macos
  GLFW_config = release_macos
  BGFX_config = release_macos
  BIMG_config = release_macos
  BX_config = release_macos

else ifeq ($(config),release_ios)
  VTT_config = release_ios
  GLFW_config = release_ios
  BGFX_config = release_ios
  BIMG_config = release_ios
  BX_config = release_ios

else ifeq ($(config),release_linux_x64)
  VTT_config = release_linux_x64
  GLFW_config = release_linux_x64
  BGFX_config = release_linux_x64
  BIMG_config = release_linux_x64
  BX_config = release_linux_x64

else
  $(error "invalid configuration $(config)")
endif

PROJECTS := VTT GLFW BGFX BIMG BX

.PHONY: all clean help $(PROJECTS) 

all: $(PROJECTS)

VTT: GLFW BGFX BIMG BX
ifneq (,$(VTT_config))
	@echo "==== Building VTT ($(VTT_config)) ===="
	@${MAKE} --no-print-directory -C . -f VTT.make config=$(VTT_config)
endif

GLFW:
ifneq (,$(GLFW_config))
	@echo "==== Building GLFW ($(GLFW_config)) ===="
	@${MAKE} --no-print-directory -C . -f GLFW.make config=$(GLFW_config)
endif

BGFX:
ifneq (,$(BGFX_config))
	@echo "==== Building BGFX ($(BGFX_config)) ===="
	@${MAKE} --no-print-directory -C . -f BGFX.make config=$(BGFX_config)
endif

BIMG:
ifneq (,$(BIMG_config))
	@echo "==== Building BIMG ($(BIMG_config)) ===="
	@${MAKE} --no-print-directory -C . -f BIMG.make config=$(BIMG_config)
endif

BX:
ifneq (,$(BX_config))
	@echo "==== Building BX ($(BX_config)) ===="
	@${MAKE} --no-print-directory -C . -f BX.make config=$(BX_config)
endif

clean:
	@${MAKE} --no-print-directory -C . -f VTT.make clean
	@${MAKE} --no-print-directory -C . -f GLFW.make clean
	@${MAKE} --no-print-directory -C . -f BGFX.make clean
	@${MAKE} --no-print-directory -C . -f BIMG.make clean
	@${MAKE} --no-print-directory -C . -f BX.make clean

help:
	@echo "Usage: make [config=name] [target]"
	@echo ""
	@echo "CONFIGURATIONS:"
	@echo "  debug_x64"
	@echo "  debug_xbox"
	@echo "  debug_playstation"
	@echo "  debug_macos"
	@echo "  debug_ios"
	@echo "  debug_linux_x64"
	@echo "  release_x64"
	@echo "  release_xbox"
	@echo "  release_playstation"
	@echo "  release_macos"
	@echo "  release_ios"
	@echo "  release_linux_x64"
	@echo ""
	@echo "TARGETS:"
	@echo "   all (default)"
	@echo "   clean"
	@echo "   VTT"
	@echo "   GLFW"
	@echo "   BGFX"
	@echo "   BIMG"
	@echo "   BX"
	@echo ""
	@echo "For more information, see https://github.com/premake/premake-core/wiki"