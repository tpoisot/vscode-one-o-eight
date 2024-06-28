template = mt"""
{
	"name": "{{name}}",
	"type": "{{type}}",
	"colors": {
		"editor.background": "{{background}}",
		"editor.foreground": "{{foreground}}",
        "activityBar.background": "{{u1}}",
        "activityBar.foreground": "{{foreground}}",
        "activityBar.inactiveForeground": "{{u5}}",
        "activityBar.activeFocusBorder": "{{c2}}",
        "activityBar.activeBorder": "{{s2}}",
        "badge.foreground": "{{foreground}}",
        "button.background": "{{s2}}",
        "button.border": "{{c2}}",
        "button.foreground": "{{u3}}",
        "button.hoverBackground": "{{c2}}",
        "diffEditor.diagonalFill": "{{u3}}44",
        "diffEditor.insertedTextBackground": "{{s2}}22",
        "diffEditor.removedTextBackground": "{{s4}}22",
        "dropdown.background": "{{u3}}",
        "dropdown.border": "{{u4}}",
        "dropdown.foreground": "{{foreground}}",
        "dropdown.listBackground": "{{u3}}",
        "editor.lineHighlightBorder": "{{background}}",
        "editor.selectionBackground": "{{u3}}66",
        "editor.findMatchBackground": "{{s4}}66",
        "editor.findMatchHighlightBackground": "{{s4}}33",
        "editor.findRangeHighlightBackground": "{{s4}}10",
        "editorStickyScroll.shadow": "{{u2}}66",
        "scrollbar.shadow": "{{u2}}66",
        "panelStickyScroll.shadow": "{{u2}}66",
        "widgetStickyScroll.shadow": "{{u2}}66",
        "editorCursor.foreground": "{{s1}}",
        "editorGroup.border": "{{u1}}",
        "editorGroupHeader.tabsBackground": "{{u1}}",
        "editorGutter.addedBackground": "{{s3}}",
        "editorGutter.deletedBackground": "{{s5}}",
        "editorGutter.modifiedBackground": "{{s2}}",
        "editorWidget.background": "{{u1}}",
        "editorWidget.foreground": "{{foreground}}",
        "editorWidget.border": "{{u2}}",
        "editorLineNumber.activeForeground": "{{u5}}",
        "editorLineNumber.foreground": "{{u2}}",
        "foreground": "{{foreground}}",
        "gitDecoration.addedResourceForeground": "{{c3}}",
        "gitDecoration.deletedResourceForeground": "{{c5}}",
        "gitDecoration.ignoredResourceForeground": "{{u4}}",
        "gitDecoration.modifiedResourceForeground": "{{c2}}",
        "gitDecoration.untrackedResourceForeground": "{{c5}}",
        "icon.foreground": "{{foreground}}",
        "input.background": "{{background}}",
        "input.foreground": "{{foreground}}",
        "input.placeholderForeground": "{{u3}}",
        "list.activeSelectionBackground": "{{u3}}",
        "list.activeFocusBackground": "{{u3}}",
        "list.inactiveFocusBackground": "{{u3}}",
        "list.inactiveSelectionBackground": "{{u3}}",
        "list.activeSelectionForeground": "{{foreground}}",
        "list.highlightForeground": "{{foreground}}",
        "list.hoverBackground": "{{u4}}",
        "list.hoverForeground": "{{foreground}}",
        "list.focusOutline": "{{u1}}",
        "list.focusAndSelectionOutline": "{{u1}}",
        "list.inactiveFocusOutline": "{{u1}}",
        "notebook.cellHoverBackground": "{{u1}}55",
        "notebook.focusedCellBackground": "{{u1}}",
        "notebook.focusedCellBorder": "{{u1}}",
        "notebook.focusedEditorBorder": "{{c1}}",
        "notebookStatusErrorIcon.foreground": "{{s5}}",
        "notebookStatusRunningIcon.foreground": "{{s2}}",
        "notebookStatusSuccessIcon.foreground": "{{s3}}",
        "sideBar.background": "{{u1}}",
        "sideBar.border": "{{u1}}",
        "sideBar.dropBackground": "{{s2}}",
        "sideBarSectionHeader.background": "{{u2}}",
        "sideBarSectionHeader.foreground": "{{foreground}}",
        "sideBarStickyScroll.background": "{{u2}}",
        "sideBarStickyScroll.shadow": "{{u2}}66",
        "sideBarTitle.foreground": "{{foreground}}",
        "statusBar.background": "{{u1}}",
        "statusBar.foreground": "{{foreground}}",
        "tab.activeBorderTop": "{{s2}}",
        "tab.activeForeground": "{{foreground}}",
        "tab.border": "{{u1}}",
        "tab.inactiveBackground": "{{u2}}",
        "tab.inactiveForeground": "{{foreground}}",
        "tab.unfocusedActiveBackground": "{{background}}",
        "titleBar.activeBackground": "{{u1}}",
        "titleBar.activeForeground": "{{foreground}}",
        "titleBar.inactiveBackground": "{{u1}}",
        "titleBar.inactiveForeground": "{{foreground}}",
        "window.activeBorder": "{{u1}}",
        "quickInput.background": "{{u1}}",
        "quickInput.foreground": "{{foreground}}",
        "quickInputList.focusBackground": "{{u2}}",
        "quickInputList.focusForeground": "{{c2}}",
        "pickerGroup.border": "{{u4}}",
        "breadcrumb.foreground": "{{foreground}}",
        "breadcrumb.background": "{{background}}",
        "editorIndentGuide.activeBackground1": "{{u5}}66",
        "editorIndentGuide.activeBackground2": "{{u5}}66",
        "editorIndentGuide.activeBackground3": "{{u5}}66",
        "editorIndentGuide.activeBackground4": "{{u5}}66",
        "editorIndentGuide.activeBackground5": "{{u5}}66",
        "editorIndentGuide.activeBackground6": "{{u5}}66",
        "editorIndentGuide.background1": "{{u2}}66",
        "editorIndentGuide.background2": "{{u2}}66",
        "editorIndentGuide.background3": "{{u2}}66",
        "editorIndentGuide.background4": "{{u2}}66",
        "editorIndentGuide.background5": "{{u2}}66",
        "editorIndentGuide.background6": "{{u2}}66"
	},
	"tokenColors": [
		{
			"name": "Comments",
			"scope": ["comment"],
			"settings": {
				"foreground": "{{g2}}"
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
                "foreground": "{{s5}}",
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
                "foreground": "{{g3}}",
                "fontStyle": "bold italic"
            }
        },
        {
            "name": "Operator",
            "scope": [
                "keyword.operator"
            ],
            "settings": {
                "foreground": "{{g3}}"
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
                "foreground": "{{g2}}"
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
        },
        {
            "name": "Markdown citation",
            "scope": [
                "string.other.link.description.markdown.citation"
            ],
            "settings": {
                "foreground": "{{g3}}",
                "fontStyle": "underline"
            }
        },
        {
            "name": "Punctuation",
            "scope": ["punctuation.definition"],
            "settings": {
                "foreground": "{{g1}}"
            }
        }
	]
}"""
