kbd = Keyboard.new
kbd.init_pins(
  [8, 9, 26, 27],
  [4, 5, 15, 14, 13, 12, 11, 19, 18, 17, 16, 10]
)
kbd.add_layer :default, %i(
  KC_ESC  KC_Q    KC_W    KC_E    KC_R    KC_T    KC_Y    KC_U    KC_I    KC_O    KC_P    KC_BSPC
  CT_TAB  KC_A    KC_S    KC_D    KC_F    KC_G    KC_H    KC_J    KC_K    KC_L    KC_SCLN KC_ENT
  KC_LSFT KC_Z    KC_X    KC_C    KC_V    KC_B    KC_N    KC_M    KC_COMM KC_DOT  KC_SLSH KC_NO
  KC_LCTL KC_LALT KC_LGUI RAISE   KC_NO   KC_NO   LOWER   KC_NO   KC_RGUI KC_RALT KC_RCTL KC_NO
)
kbd.add_layer :raise, %i(
  KC_GRV  KC_EXLM KC_AT   KC_HASH KC_DLR  KC_PERC KC_CIRC KC_AMPR KC_ASTR KC_LPRN KC_RPRN KC_DEL
  CT_TAB  KC_1    KC_2    KC_3    KC_4    KC_5    KC_6    KC_7    KC_8    KC_9    KC_0    KC_ENT
  KC_LSFT KC_EQL  KC_LT   KC_LCBR KC_LBRC KC_MINS KC_RBRC KC_RCBR KC_GT   KC_SLSH KC_RSFT KC_NO
  KC_LCTL KC_LALT KC_LGUI RAISE   KC_NO   KC_NO   LOWER   KC_NO   KC_RGUI KC_RALT KC_RCTL KC_NO
)
kbd.add_layer :lower, %i(
  KC_F1   KC_F2   KC_F3   KC_F4   KC_F5   KC_F6   KC_F7   KC_F8   KC_F9   KC_F10  KC_F11  KC_F12
  CT_TAB  KC_HOME KC_PGDN KC_PGUP KC_END  KC_NO   KC_LEFT KC_DOWN KC_UP   KC_RGHT KC_NO   KC_ENT
  KC_LSFT KC_PSCREEN KC_INS  KC_SCROLLLOCK KC_PAUSE KC_B    KC_N    KC_M    KC_COMM RGB_MOD RGB_RMOD  KC_NO
  KC_LCTL KC_LALT KC_LGUI RAISE   KC_NO   KC_NO   LOWER   KC_NO   KC_RGUI KC_RALT KC_RCTL KC_NO
)
kbd.define_mode_key :CT_TAB,[:KC_TAB,:KC_LCTL,200,200]
kbd.define_mode_key :RAISE,[:KC_SPC,:raise,200,200]
kbd.define_mode_key :LOWER,[:KC_ENT,:lower,200,200]
rgb = RGB.new(
  0,
  13,
  0,
  false
)
rgb.effect = :swirl
kbd.append rgb
kbd.start!
