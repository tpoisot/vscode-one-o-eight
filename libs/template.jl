
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
        "list.highlightForeground": "{{foreground}}",
        "icon.foreground": "{{g5}}",
        "activityBar.background": "{{u1}}",
        "sideBar.background": "{{u1}}",
        "statusBar.remoteBackground": "{{s1}}",
        "sideBar.border": "{{u1}}",
        "statusBar.remoteForeground": "{{g1}}",
        "activityBar.foreground": "{{g5}}",
        "statusBar.background": "{{u1}}",
        "statusBar.foreground": "{{foreground}}",
        "titleBar.activeBackground": "{{u1}}",
        "titleBar.inactiveBackground": "{{u1}}",
        "editorGroup.border": "{{u1}}",
        "editorGroupHeader.tabsBackground": "{{u1}}",
        "tab.unfocusedActiveBackground": "{{background}}",
        "tab.inactiveBackground": "{{u2}}",
        "tab.border": "{{u1}}"
	},
	"tokenColors": [
		{
			"name": "Comments",
			"scope": ["comment"],
			"settings": {
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
            "name": "Name tag entity",
            "scope": [
                "entity.name.tag"
            ],
            "settings": {
                "foreground": "{{c1}}",
                "fontStyle": "bold"
            }
        },
        {
            "name": "Quoted YAML string",
            "scope": [
                "string.quoted.single.yaml",
                "string.quoted.double.yaml"
            ],
            "settings": {
                "foreground": "{{c2}}"
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
