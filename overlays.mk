LDFLAGS_FIELD = rom_gen.ld -T linker_field.ld
LDFLAGS_BATTLE = rom_gen.ld -T linker_battle.ld
LDFLAGS_POKEDEX = rom_gen.ld -T linker_pokedex.ld
LDFLAGS_GETMONEVOLUTION = rom_gen.ld -T src/individual/linker_getmonevolution.ld
LDFLAGS_GETMONEVOLUTION_BATTLE = rom_gen.ld -T linker_pokedex.ld
LDFLAGS_MOVEHITDEFENDERABILITYCHECK = rom_gen_battle.ld -T src/individual/linker_movehitdefenderabilitycheck.ld
LDFLAGS_SWITCHINABILITYCHECK = rom_gen_battle.ld -T src/individual/linker_switchinabilitycheck.ld
LDFLAGS_BATTLEFORMCHANGECHECK = rom_gen_battle.ld -T src/individual/linker_battleformchangecheck.ld

LINKED_OUTPUTS = build/linked.o
BATTLE_LINK = $(BUILD)/battle_linked.o
BATTLE_OUTPUT = $(BUILD)/output_battle.bin
OVERLAY_OUTPUTS += $(BATTLE_OUTPUT)
LINKED_OUTPUTS += $(BATTLE_LINK)
FIELD_LINK = $(BUILD)/field_linked.o
FIELD_OUTPUT = $(BUILD)/output_field.bin
OVERLAY_OUTPUTS += $(FIELD_OUTPUT)
LINKED_OUTPUTS += $(FIELD_LINK)
POKEDEX_LINK = $(BUILD)/pokedex_linked.o
POKEDEX_OUTPUT = $(BUILD)/output_pokedex.bin
OVERLAY_OUTPUTS += $(POKEDEX_OUTPUT)
LINKED_OUTPUTS += $(POKEDEX_LINK)
GETMONEVOLUTION_LINK = $(BUILD)/getmonevolution_linked.o
GETMONEVOLUTION_OUTPUT = $(BUILD)/output_getmonevolution.bin
OVERLAY_OUTPUTS += $(GETMONEVOLUTION_OUTPUT)
LINKED_OUTPUTS += $(GETMONEVOLUTION_LINK)
GETMONEVOLUTION_BATTLE_LINK = $(BUILD)/getmonevolution_battle_linked.o
GETMONEVOLUTION_BATTLE_OUTPUT = $(BUILD)/output_getmonevolution_battle.bin
OVERLAY_OUTPUTS += $(GETMONEVOLUTION_BATTLE_OUTPUT)
LINKED_OUTPUTS += $(GETMONEVOLUTION_BATTLE_LINK)
MOVEHITDEFENDERABILITYCHECK_LINK = $(BUILD)/movehitdefenderabilitycheck_linked.o
MOVEHITDEFENDERABILITYCHECK_OUTPUT = $(BUILD)/output_movehitdefenderabilitycheck.bin
OVERLAY_OUTPUTS += $(MOVEHITDEFENDERABILITYCHECK_OUTPUT)
LINKED_OUTPUTS += $(MOVEHITDEFENDERABILITYCHECK_LINK)
SWITCHINABILITYCHECK_LINK = $(BUILD)/switchinabilitycheck_linked.o
SWITCHINABILITYCHECK_OUTPUT = $(BUILD)/output_switchinabilitycheck.bin
OVERLAY_OUTPUTS += $(SWITCHINABILITYCHECK_OUTPUT)
LINKED_OUTPUTS += $(SWITCHINABILITYCHECK_LINK)
BTLSCRCMD33STATBUFFCHANGE_LINK = $(BUILD)/btl_scr_cmd_33_statbuffchange_linked.o
BTLSCRCMD33STATBUFFCHANGE_OUTPUT = $(BUILD)/output_btl_scr_cmd_33_statbuffchange.bin
OVERLAY_OUTPUTS += $(BTLSCRCMD33STATBUFFCHANGE_OUTPUT)
LINKED_OUTPUTS += $(BTLSCRCMD33STATBUFFCHANGE_LINK)
CALCBASEDAMAGE_LINK = $(BUILD)/calcbasedamage_linked.o
CALCBASEDAMAGE_OUTPUT = $(BUILD)/output_calcbasedamage.bin
OVERLAY_OUTPUTS += $(CALCBASEDAMAGE_OUTPUT)
LINKED_OUTPUTS += $(CALCBASEDAMAGE_LINK)
BATTLEFORMCHANGECHECK_LINK = $(BUILD)/battleformchangecheck_linked.o
BATTLEFORMCHANGECHECK_OUTPUT = $(BUILD)/output_battleformchangecheck.bin
OVERLAY_OUTPUTS += $(BATTLEFORMCHANGECHECK_OUTPUT)
LINKED_OUTPUTS += $(BATTLEFORMCHANGECHECK_LINK)
CHECKDEFENDERITEMEFFECTONHIT_LINK = $(BUILD)/checkdefenderitemeffectonhit_linked.o
CHECKDEFENDERITEMEFFECTONHIT_OUTPUT = $(BUILD)/output_checkdefenderitemeffectonhit.bin
OVERLAY_OUTPUTS += $(CHECKDEFENDERITEMEFFECTONHIT_OUTPUT)
LINKED_OUTPUTS += $(CHECKDEFENDERITEMEFFECTONHIT_LINK)


BATTLE_C_SRCS := $(wildcard $(C_SUBDIR)/battle/*.c)
BATTLE_C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(BUILD)/%.o,$(BATTLE_C_SRCS))
BATTLE_ASM_SRCS := $(wildcard $(ASM_SUBDIR)/battle/*.s)
BATTLE_ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(BUILD)/%.d,$(BATTLE_ASM_SRCS))
BATTLE_OBJS := $(BATTLE_C_OBJS) $(BATTLE_ASM_OBJS) build/thumb_help.d
OVERLAY_OBJS += $(BATTLE_OBJS)

FIELD_C_SRCS := $(wildcard $(C_SUBDIR)/field/*.c)
FIELD_C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(BUILD)/%.o,$(FIELD_C_SRCS))
FIELD_ASM_SRCS := $(wildcard $(ASM_SUBDIR)/field/*.s)
FIELD_ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(BUILD)/%.d,$(FIELD_ASM_SRCS))
FIELD_OBJS := $(FIELD_C_OBJS) $(FIELD_ASM_OBJS) build/thumb_help.d
OVERLAY_OBJS += $(FIELD_OBJS)

POKEDEX_C_SRCS := $(wildcard $(C_SUBDIR)/pokedex/*.c)
POKEDEX_C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(BUILD)/%.o,$(POKEDEX_C_SRCS))
POKEDEX_ASM_SRCS := $(wildcard $(ASM_SUBDIR)/pokedex/*.s)
POKEDEX_ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(BUILD)/%.d,$(POKEDEX_ASM_SRCS))
POKEDEX_OBJS := $(POKEDEX_C_OBJS) $(POKEDEX_ASM_OBJS) build/thumb_help.d
OVERLAY_OBJS += $(POKEDEX_OBJS)

GETMONEVOLUTION_C_SRCS := $(C_SUBDIR)/individual/GetMonEvolutionInternal.c
GETMONEVOLUTION_C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(BUILD)/%.o,$(GETMONEVOLUTION_C_SRCS))
GETMONEVOLUTION_OBJS := $(GETMONEVOLUTION_C_OBJS) build/thumb_help.d
OVERLAY_OBJS += $(GETMONEVOLUTION_OBJS)

MOVEHITDEFENDERABILITYCHECK_C_SRCS := $(C_SUBDIR)/individual/MoveHitDefenderAbilityCheck.c
MOVEHITDEFENDERABILITYCHECK_C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(BUILD)/%.o,$(MOVEHITDEFENDERABILITYCHECK_C_SRCS))
MOVEHITDEFENDERABILITYCHECK_OBJS := $(MOVEHITDEFENDERABILITYCHECK_C_OBJS) build/thumb_help.d
OVERLAY_OBJS += $(MOVEHITDEFENDERABILITYCHECK_OBJS)

SWITCHINABILITYCHECK_C_SRCS := $(C_SUBDIR)/individual/SwitchInAbilityCheck.c
SWITCHINABILITYCHECK_C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(BUILD)/%.o,$(SWITCHINABILITYCHECK_C_SRCS))
SWITCHINABILITYCHECK_OBJS := $(SWITCHINABILITYCHECK_C_OBJS) build/thumb_help.d
OVERLAY_OBJS += $(SWITCHINABILITYCHECK_OBJS)

BTLSCRCMD33STATBUFFCHANGE_C_SRCS := $(C_SUBDIR)/individual/btl_scr_cmd_33_statbuffchange.c
BTLSCRCMD33STATBUFFCHANGE_C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(BUILD)/%.o,$(BTLSCRCMD33STATBUFFCHANGE_C_SRCS))
BTLSCRCMD33STATBUFFCHANGE_OBJS := $(BTLSCRCMD33STATBUFFCHANGE_C_OBJS) build/thumb_help.d
OVERLAY_OBJS += $(BTLSCRCMD33STATBUFFCHANGE_OBJS)

CALCBASEDAMAGE_C_SRCS := $(C_SUBDIR)/individual/CalcBaseDamage.c
CALCBASEDAMAGE_C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(BUILD)/%.o,$(CALCBASEDAMAGE_C_SRCS))
CALCBASEDAMAGE_OBJS := $(CALCBASEDAMAGE_C_OBJS) build/thumb_help.d
OVERLAY_OBJS += $(CALCBASEDAMAGE_OBJS)

BATTLEFORMCHANGECHECK_C_SRCS := $(C_SUBDIR)/individual/BattleFormChangeCheck.c
BATTLEFORMCHANGECHECK_C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(BUILD)/%.o,$(BATTLEFORMCHANGECHECK_C_SRCS))
BATTLEFORMCHANGECHECK_OBJS := $(BATTLEFORMCHANGECHECK_C_OBJS) build/thumb_help.d
OVERLAY_OBJS += $(BATTLEFORMCHANGECHECK_OBJS)

CHECKDEFENDERITEMEFFECTONHIT_C_SRCS := $(C_SUBDIR)/individual/CheckDefenderItemEffectOnHit.c
CHECKDEFENDERITEMEFFECTONHIT_C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(BUILD)/%.o,$(CHECKDEFENDERITEMEFFECTONHIT_C_SRCS))
CHECKDEFENDERITEMEFFECTONHIT_OBJS := $(CHECKDEFENDERITEMEFFECTONHIT_C_OBJS) build/thumb_help.d
OVERLAY_OBJS += $(CHECKDEFENDERITEMEFFECTONHIT_OBJS)


$(FIELD_LINK):$(FIELD_OBJS) rom_gen.ld
	$(LD) $(LDFLAGS_FIELD) -o $@ $(FIELD_OBJS)

$(FIELD_OUTPUT):$(FIELD_LINK)
	$(OBJCOPY) -O binary $< $@

$(BATTLE_LINK):$(BATTLE_OBJS) rom_gen.ld
	$(LD) $(LDFLAGS_BATTLE) -o $@ $(BATTLE_OBJS)

$(BATTLE_OUTPUT):$(BATTLE_LINK)
	$(OBJCOPY) -O binary $< $@

$(POKEDEX_LINK):$(POKEDEX_OBJS) rom_gen.ld
	$(LD) $(LDFLAGS_POKEDEX) -o $@ $(POKEDEX_OBJS)

$(POKEDEX_OUTPUT):$(POKEDEX_LINK)
	$(OBJCOPY) -O binary $< $@

$(GETMONEVOLUTION_LINK):$(GETMONEVOLUTION_OBJS) rom_gen.ld
	$(LD) $(LDFLAGS_GETMONEVOLUTION) -o $@ $(GETMONEVOLUTION_OBJS)

$(GETMONEVOLUTION_OUTPUT):$(GETMONEVOLUTION_LINK)
	$(OBJCOPY) -O binary $< $@

$(GETMONEVOLUTION_BATTLE_LINK):$(GETMONEVOLUTION_OBJS) rom_gen.ld
	$(LD) $(LDFLAGS_GETMONEVOLUTION_BATTLE) -o $@ $(GETMONEVOLUTION_OBJS)

$(GETMONEVOLUTION_BATTLE_OUTPUT):$(GETMONEVOLUTION_BATTLE_LINK)
	$(OBJCOPY) -O binary $< $@



rom_gen_battle.ld:$(BATTLE_LINK) $(BATTLE_OUTPUT) rom_gen.ld
	cp rom_gen.ld rom_gen_battle.ld
	$(PYTHON) scripts/generate_ld.py rom_gen_battle.ld $(BATTLE_LINK)


$(MOVEHITDEFENDERABILITYCHECK_LINK):$(MOVEHITDEFENDERABILITYCHECK_OBJS) rom_gen_battle.ld
	$(LD) $(LDFLAGS_MOVEHITDEFENDERABILITYCHECK) -o $@ $(MOVEHITDEFENDERABILITYCHECK_OBJS)

$(MOVEHITDEFENDERABILITYCHECK_OUTPUT):$(MOVEHITDEFENDERABILITYCHECK_LINK)
	$(OBJCOPY) -O binary $< $@

$(SWITCHINABILITYCHECK_LINK):$(SWITCHINABILITYCHECK_OBJS) rom_gen_battle.ld
	$(LD) $(LDFLAGS_SWITCHINABILITYCHECK) -o $@ $(SWITCHINABILITYCHECK_OBJS)

$(SWITCHINABILITYCHECK_OUTPUT):$(SWITCHINABILITYCHECK_LINK)
	$(OBJCOPY) -O binary $< $@

$(BTLSCRCMD33STATBUFFCHANGE_LINK):$(BTLSCRCMD33STATBUFFCHANGE_OBJS) rom_gen_battle.ld
	$(LD) $(LDFLAGS_SWITCHINABILITYCHECK) -o $@ $(BTLSCRCMD33STATBUFFCHANGE_OBJS)

$(BTLSCRCMD33STATBUFFCHANGE_OUTPUT):$(BTLSCRCMD33STATBUFFCHANGE_LINK)
	$(OBJCOPY) -O binary $< $@

$(CALCBASEDAMAGE_LINK):$(CALCBASEDAMAGE_OBJS) rom_gen_battle.ld
	$(LD) $(LDFLAGS_SWITCHINABILITYCHECK) -o $@ $(CALCBASEDAMAGE_OBJS)

$(CALCBASEDAMAGE_OUTPUT):$(CALCBASEDAMAGE_LINK)
	$(OBJCOPY) -O binary $< $@

$(BATTLEFORMCHANGECHECK_LINK):$(BATTLEFORMCHANGECHECK_OBJS) rom_gen_battle.ld
	$(LD) $(LDFLAGS_BATTLEFORMCHANGECHECK) -o $@ $(BATTLEFORMCHANGECHECK_OBJS)

$(BATTLEFORMCHANGECHECK_OUTPUT):$(BATTLEFORMCHANGECHECK_LINK)
	$(OBJCOPY) -O binary $< $@

$(CHECKDEFENDERITEMEFFECTONHIT_LINK):$(CHECKDEFENDERITEMEFFECTONHIT_OBJS) rom_gen_battle.ld
	$(LD) $(LDFLAGS_SWITCHINABILITYCHECK) -o $@ $(CHECKDEFENDERITEMEFFECTONHIT_OBJS)

$(CHECKDEFENDERITEMEFFECTONHIT_OUTPUT):$(CHECKDEFENDERITEMEFFECTONHIT_LINK)
	$(OBJCOPY) -O binary $< $@
