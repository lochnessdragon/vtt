# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=debug_x64
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

INCLUDES += -Ilib/bx/include -Ilib/bimg/include -Ilib/bimg/3rdparty/astc-codec -Ilib/bimg/3rdparty/astc-codec/include
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LIBS +=
LDDEPS +=
LINKCMD = $(AR) -rcs "$@" $(OBJECTS)
define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
endef

ifeq ($(config),debug_x64)
RESCOMP = windres
TARGETDIR = bin/Debug-linux-x86_64/BIMG
TARGET = $(TARGETDIR)/libBIMG.a
OBJDIR = bin-int/Debug-linux-x86_64/BIMG
DEFINES += -DDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64

else ifeq ($(config),debug_xbox)
RESCOMP = windres
TARGETDIR = bin/Debug-linux-/BIMG
TARGET = $(TARGETDIR)/libBIMG.a
OBJDIR = bin-int/Debug-linux-/BIMG/Xbox
DEFINES += -DDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -g
ALL_LDFLAGS += $(LDFLAGS)

else ifeq ($(config),debug_playstation)
RESCOMP = windres
TARGETDIR = bin/Debug-linux-/BIMG
TARGET = $(TARGETDIR)/libBIMG.a
OBJDIR = bin-int/Debug-linux-/BIMG/PlayStation
DEFINES += -DDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -g
ALL_LDFLAGS += $(LDFLAGS)

else ifeq ($(config),debug_macos)
RESCOMP = windres
TARGETDIR = bin/Debug-linux-/BIMG
TARGET = $(TARGETDIR)/libBIMG.a
OBJDIR = bin-int/Debug-linux-/BIMG/macOS
DEFINES += -DDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -g
ALL_LDFLAGS += $(LDFLAGS)

else ifeq ($(config),debug_ios)
ifeq ($(origin CC), default)
  CC = clang
endif
ifeq ($(origin CXX), default)
  CXX = clang++
endif
ifeq ($(origin AR), default)
  AR = ar
endif
TARGETDIR = bin/Debug-ios-/BIMG
TARGET = $(TARGETDIR)/libBIMG.a
OBJDIR = bin-int/Debug-ios-/BIMG
DEFINES += -DDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -g
ALL_LDFLAGS += $(LDFLAGS)

else ifeq ($(config),debug_linux_x64)
RESCOMP = windres
TARGETDIR = bin/Debug-linux-/BIMG
TARGET = $(TARGETDIR)/libBIMG.a
OBJDIR = bin-int/Debug-linux-/BIMG/Linux_x64
DEFINES += -DDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -g
ALL_LDFLAGS += $(LDFLAGS)

else ifeq ($(config),release_x64)
RESCOMP = windres
TARGETDIR = bin/Release-linux-x86_64/BIMG
TARGET = $(TARGETDIR)/libBIMG.a
OBJDIR = bin-int/Release-linux-x86_64/BIMG
DEFINES += -DNDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O2
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -s

else ifeq ($(config),release_xbox)
RESCOMP = windres
TARGETDIR = bin/Release-linux-/BIMG
TARGET = $(TARGETDIR)/libBIMG.a
OBJDIR = bin-int/Release-linux-/BIMG/Xbox
DEFINES += -DNDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O2
ALL_LDFLAGS += $(LDFLAGS) -s

else ifeq ($(config),release_playstation)
RESCOMP = windres
TARGETDIR = bin/Release-linux-/BIMG
TARGET = $(TARGETDIR)/libBIMG.a
OBJDIR = bin-int/Release-linux-/BIMG/PlayStation
DEFINES += -DNDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O2
ALL_LDFLAGS += $(LDFLAGS) -s

else ifeq ($(config),release_macos)
RESCOMP = windres
TARGETDIR = bin/Release-linux-/BIMG
TARGET = $(TARGETDIR)/libBIMG.a
OBJDIR = bin-int/Release-linux-/BIMG/macOS
DEFINES += -DNDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O2
ALL_LDFLAGS += $(LDFLAGS) -s

else ifeq ($(config),release_ios)
ifeq ($(origin CC), default)
  CC = clang
endif
ifeq ($(origin CXX), default)
  CXX = clang++
endif
ifeq ($(origin AR), default)
  AR = ar
endif
TARGETDIR = bin/Release-ios-/BIMG
TARGET = $(TARGETDIR)/libBIMG.a
OBJDIR = bin-int/Release-ios-/BIMG
DEFINES += -DNDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O2
ALL_LDFLAGS += $(LDFLAGS)

else ifeq ($(config),release_linux_x64)
RESCOMP = windres
TARGETDIR = bin/Release-linux-/BIMG
TARGET = $(TARGETDIR)/libBIMG.a
OBJDIR = bin-int/Release-linux-/BIMG/Linux_x64
DEFINES += -DNDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O2
ALL_LDFLAGS += $(LDFLAGS) -s

endif

# Per File Configurations
# #############################################


# File sets
# #############################################

GENERATED :=
OBJECTS :=

GENERATED += $(OBJDIR)/astc_file.o
GENERATED += $(OBJDIR)/codec.o
GENERATED += $(OBJDIR)/endpoint_codec.o
GENERATED += $(OBJDIR)/footprint.o
GENERATED += $(OBJDIR)/image.o
GENERATED += $(OBJDIR)/image_gnf.o
GENERATED += $(OBJDIR)/integer_sequence_codec.o
GENERATED += $(OBJDIR)/intermediate_astc_block.o
GENERATED += $(OBJDIR)/logical_astc_block.o
GENERATED += $(OBJDIR)/partition.o
GENERATED += $(OBJDIR)/physical_astc_block.o
GENERATED += $(OBJDIR)/quantization.o
GENERATED += $(OBJDIR)/weight_infill.o
OBJECTS += $(OBJDIR)/astc_file.o
OBJECTS += $(OBJDIR)/codec.o
OBJECTS += $(OBJDIR)/endpoint_codec.o
OBJECTS += $(OBJDIR)/footprint.o
OBJECTS += $(OBJDIR)/image.o
OBJECTS += $(OBJDIR)/image_gnf.o
OBJECTS += $(OBJDIR)/integer_sequence_codec.o
OBJECTS += $(OBJDIR)/intermediate_astc_block.o
OBJECTS += $(OBJDIR)/logical_astc_block.o
OBJECTS += $(OBJDIR)/partition.o
OBJECTS += $(OBJDIR)/physical_astc_block.o
OBJECTS += $(OBJDIR)/quantization.o
OBJECTS += $(OBJDIR)/weight_infill.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(GENERATED) $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking BIMG
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning BIMG
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(GENERATED)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(GENERATED)) rmdir /s /q $(subst /,\\,$(GENERATED))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/astc_file.o: lib/bimg/3rdparty/astc-codec/src/decoder/astc_file.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/codec.o: lib/bimg/3rdparty/astc-codec/src/decoder/codec.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/endpoint_codec.o: lib/bimg/3rdparty/astc-codec/src/decoder/endpoint_codec.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/footprint.o: lib/bimg/3rdparty/astc-codec/src/decoder/footprint.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/integer_sequence_codec.o: lib/bimg/3rdparty/astc-codec/src/decoder/integer_sequence_codec.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/intermediate_astc_block.o: lib/bimg/3rdparty/astc-codec/src/decoder/intermediate_astc_block.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/logical_astc_block.o: lib/bimg/3rdparty/astc-codec/src/decoder/logical_astc_block.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/partition.o: lib/bimg/3rdparty/astc-codec/src/decoder/partition.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/physical_astc_block.o: lib/bimg/3rdparty/astc-codec/src/decoder/physical_astc_block.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quantization.o: lib/bimg/3rdparty/astc-codec/src/decoder/quantization.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/weight_infill.o: lib/bimg/3rdparty/astc-codec/src/decoder/weight_infill.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/image.o: lib/bimg/src/image.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/image_gnf.o: lib/bimg/src/image_gnf.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif