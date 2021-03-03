
template = mt"""
{
	"name": "{{name}}",
	"type": "{{type}}",
	"colors": {
		"editor.background": "{{background}}",
		"editor.foreground": "{{foreground}}",
        "editor.selectionBackground": "{{g3}}66",
        "editor.lineHighlightBorder": "{{background}}",
        "editorLineNumber.foreground": "{{g2}}",
        "editorLineNumber.activeForeground": "{{g4}}",
        "editorCursor.foreground": "{{c4}}",
        "foreground": "{{foreground}}",
        "icon.foreground": "{{g5}}",
        "activityBar.background": "{{g2}}",
        "statusBar.background": "{{g2}}",
        "sideBar.background": "{{g1}}",
        "statusBar.remoteBackground": "{{s1}}",
        "sideBar.border": "{{g2}}",
        "statusBar.remoteForeground": "{{g1}}",
        "activityBar.foreground": "{{g5}}",
        "statusBar.foreground": "{{g5}}",
        "titleBar.activeBackground": "{{g2}}",
        "editorGroup.border": "{{g2}}",
        "editorGroupHeader.tabsBackground": "{{g2}}",
        "tab.unfocusedActiveBackground": "{{background}}",
        "tab.inactiveBackground": "{{g1}}",
        "tab.border": "{{g2}}"
	},
	"tokenColors": [
		{
			"name": "Comments",
			"scope": ["comment"],
			"settings": {
				"fontStyle": "italic",
				"foreground": "{{g5}}"
			}
		},
        {
            "name": "Punctuation",
            "scope": ["punctuation.definition"],
            "settings": {
                "foreground": "{{g3}}"
            }
        },
        {
            "name": "Types",
            "scope": [
                "support.type"
            ],
            "settings": {
                "foreground": "{{c4}}"
            }
        },
        {
            "name": "Macro",
            "scope": [
                "support.function.macro"
            ],
            "settings": {
                "foreground": "{{s4}}",
                "fontStyle": "italic"
            }
        },
        {
            "name": "Constant",
            "scope": [
                "constant"
            ],
            "settings": {
                "foreground": "{{c5}}"
            }
        },
        {
            "name": "Constant (numeric)",
            "scope": [
                "constant.numeric"
            ],
            "settings": {
                "foreground": "{{c3}}"
            }
        },
        {
            "name": "Constant (escape char)",
            "scope": [
                "constant.character.escape"
            ],
            "settings": {
                "foreground": "{{g5}}",
                "fontStyle": "bold italic"
            }
        },
        {
            "name": "Operator",
            "scope": [
                "keyword.operator"
            ],
            "settings": {
                "foreground": "{{g5}}"
            }
        },
        {
            "name": "Operator (boolean)",
            "scope": [
                "keyword.operator.boolean"
            ],
            "settings": {
                "foreground": "{{s2}}"
            }
        },
        {
            "name": "Brackets",
            "scope": [
                "meta.bracket"
            ],
            "settings": {
                "foreground": "{{g4}}"
            }
        },
        {
            "name": "String",
            "scope": [
                "string"
            ],
            "settings": {
                "foreground": "{{s3}}"
            }
        },
        {
            "name": "Keywords",
            "scope": [
                "keyword"
            ],
            "settings": {
                "foreground": "{{c1}}"
            }
        },
        {
            "name": "Interpolation",
            "scope": [
                "variable.interpolation"
            ],
            "settings": {
                "foreground": "{{s1}}"
            }
        },
        {
            "name": "Function name",
            "scope": [
                "entity.name.function"
            ],
            "settings": {
                "foreground": "{{c2}}",
                "fontStyle": "italic"
            }
        },
        {
            "name": "Function in code",
            "scope": [
                "support.function"
            ],
            "settings": {
                "foreground": "{{c2}}"
            }
        },
        {
            "name": "TOML Section",
            "scope": [
                "entity.other.attribute-name.table.array.toml",
                "entity.other.attribute-name.table.toml"
            ],
            "settings": {
                "foreground": "{{c1}}",
                "fontStyle": "bold"
            }
        },
        {
            "name": "Markdown title",
            "scope": [
                "markup.heading.markdown"
            ],
            "settings": {
                "foreground": "{{c2}}",
                "fontStyle": "bold"
            }
        },
        {
            "name": "Markdown fenced block language",
            "scope": [
                "fenced_code.block.language"
            ],
            "settings": {
                "foreground": "{{c1}}",
                "fontStyle": "italic"
            }
        },
        {
            "name": "Markdown link reference",
            "scope": [
                "string.other.link.title.markdown",
                "string.other.link.description.markdown"
            ],
            "settings": {
                "foreground": "{{c3}}",
                "fontStyle": "bold"
            }
        },
        {
            "name": "Markdown link reference",
            "scope": [
                "constant.other.reference.link.markdown"
            ],
            "settings": {
                "foreground": "{{s4}}",
                "fontStyle": "italic"
            }
        },
        {
            "name": "Markdown actual link",
            "scope": [
                "markup.underline.link.markdown"
            ],
            "settings": {
                "foreground": "{{s2}}",
                "fontStyle": "underline"
            }
        },
        {
            "name": "Markdown raw code",
            "scope": [
                "markup.inline.raw.string.markdown"
            ],
            "settings": {
                "foreground": "{{c1}}",
                "fontStyle": ""
            }
        },
        {
            "name": "Markdown bold",
            "scope": [
                "markup.bold"
            ],
            "settings": {
                "fontStyle": "bold"
            }
        },
        {
            "name": "Markdown italic",
            "scope": [
                "markup.italic"
            ],
            "settings": {
                "fontStyle": "italic"
            }
        }
	]
}"""
