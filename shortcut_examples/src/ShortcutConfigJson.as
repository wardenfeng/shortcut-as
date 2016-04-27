package
{

	/**
	 *
	 * @author feng 2016-4-27
	 */
	public class ShortcutConfigJson
	{
		// 通过将键绑定放入键绑定文件中来覆盖键绑定。
		public static var config:Array = [ //
			{"key": "shift+escape", "command": "closeReferenceSearchEditor", "when": "editorFocus && inReferenceSearchEditor"}, //
			{"key": "escape", "command": "closeReferenceSearchEditor", "when": "editorFocus && inReferenceSearchEditor"}, //
			{"key": "shift+escape", "command": "cancelSelection", "when": "editorTextFocus && editorHasSelection"}, //
			{"key": "escape", "command": "cancelSelection", "when": "editorTextFocus && editorHasSelection"}, //
			{"key": "ctrl+end", "command": "cursorBottom", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+end", "command": "cursorBottomSelect", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+alt+down", "command": "cursorColumnSelectDown", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+alt+left", "command": "cursorColumnSelectLeft", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+alt+pagedown", "command": "cursorColumnSelectPageDown", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+alt+pageup", "command": "cursorColumnSelectPageUp", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+alt+right", "command": "cursorColumnSelectRight", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+alt+up", "command": "cursorColumnSelectUp", "when": "editorTextFocus"}, //
			{"key": "down", "command": "cursorDown", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+down", "command": "cursorDownSelect", "when": "editorTextFocus"}, //
			{"key": "shift+down", "command": "cursorDownSelect", "when": "editorTextFocus"}, //
			{"key": "end", "command": "cursorEnd", "when": "editorTextFocus"}, //
			{"key": "shift+end", "command": "cursorEndSelect", "when": "editorTextFocus"}, //
			{"key": "home", "command": "cursorHome", "when": "editorTextFocus"}, //
			{"key": "shift+home", "command": "cursorHomeSelect", "when": "editorTextFocus"}, //
			{"key": "left", "command": "cursorLeft", "when": "editorTextFocus"}, //
			{"key": "shift+left", "command": "cursorLeftSelect", "when": "editorTextFocus"}, //
			{"key": "pagedown", "command": "cursorPageDown", "when": "editorTextFocus"}, //
			{"key": "shift+pagedown", "command": "cursorPageDownSelect", "when": "editorTextFocus"}, //
			{"key": "pageup", "command": "cursorPageUp", "when": "editorTextFocus"}, //
			{"key": "shift+pageup", "command": "cursorPageUpSelect", "when": "editorTextFocus"}, //
			{"key": "right", "command": "cursorRight", "when": "editorTextFocus"}, //
			{"key": "shift+right", "command": "cursorRightSelect", "when": "editorTextFocus"}, //
			{"key": "ctrl+home", "command": "cursorTop", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+home", "command": "cursorTopSelect", "when": "editorTextFocus"}, //
			{"key": "ctrl+u", "command": "cursorUndo", "when": "editorTextFocus"}, //
			{"key": "up", "command": "cursorUp", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+up", "command": "cursorUpSelect", "when": "editorTextFocus"}, //
			{"key": "shift+up", "command": "cursorUpSelect", "when": "editorTextFocus"}, //
			{"key": "ctrl+right", "command": "cursorWordEndRight", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+right", "command": "cursorWordEndRightSelect", "when": "editorTextFocus"}, //
			{"key": "ctrl+left", "command": "cursorWordStartLeft", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+left", "command": "cursorWordStartLeftSelect", "when": "editorTextFocus"}, //
			{"key": "shift+backspace", "command": "deleteLeft", "when": "editorTextFocus"}, //
			{"key": "backspace", "command": "deleteLeft", "when": "editorTextFocus"}, //
			{"key": "delete", "command": "deleteRight", "when": "editorTextFocus"}, //
			{"key": "ctrl+backspace", "command": "deleteWordLeft", "when": "editorTextFocus"}, //
			{"key": "ctrl+delete", "command": "deleteWordRight", "when": "editorTextFocus"}, //
			{"key": "ctrl+a", "command": "editor.action.selectAll"}, //
			{"key": "ctrl+i", "command": "expandLineSelection", "when": "editorTextFocus"}, //
			{"key": "shift+tab", "command": "outdent", "when": "editorTextFocus && !editorTabMovesFocus"}, //
			{"key": "ctrl+shift+z", "command": "redo", "when": "editorTextFocus"}, //
			{"key": "ctrl+y", "command": "redo", "when": "editorTextFocus"}, //
			{"key": "ctrl+down", "command": "scrollLineDown", "when": "editorTextFocus"}, //
			{"key": "ctrl+up", "command": "scrollLineUp", "when": "editorTextFocus"}, //
			{"key": "ctrl+pagedown", "command": "scrollPageDown", "when": "editorTextFocus"}, //
			{"key": "ctrl+pageup", "command": "scrollPageUp", "when": "editorTextFocus"}, //
			{"key": "tab", "command": "tab", "when": "editorTextFocus && !editorTabMovesFocus"}, //
			{"key": "ctrl+z", "command": "undo", "when": "editorTextFocus"}, //
			{"key": "shift+escape", "command": "removeSecondaryCursors", "when": "editorTextFocus && editorHasMultipleSelections"}, //
			{"key": "escape", "command": "removeSecondaryCursors", "when": "editorTextFocus && editorHasMultipleSelections"}, //
			{"key": "ctrl+f", "command": "actions.find"}, //
			{"key": "ctrl+k ctrl+c", "command": "editor.action.addCommentLine", "when": "editorTextFocus"}, //
			{"key": "ctrl+d", "command": "editor.action.addSelectionToNextFindMatch", "when": "editorFocus"}, //
			{"key": "shift+alt+a", "command": "editor.action.blockComment", "when": "editorTextFocus"}, //
			{"key": "ctrl+f2", "command": "editor.action.changeAll", "when": "editorTextFocus"}, //
			{"key": "ctrl+insert", "command": "editor.action.clipboardCopyAction"}, //
			{"key": "ctrl+c", "command": "editor.action.clipboardCopyAction"}, //
			{"key": "shift+delete", "command": "editor.action.clipboardCutAction"}, //
			{"key": "ctrl+x", "command": "editor.action.clipboardCutAction"}, //
			{"key": "shift+insert", "command": "editor.action.clipboardPasteAction"}, //
			{"key": "ctrl+v", "command": "editor.action.clipboardPasteAction"}, //
			{"key": "ctrl+/", "command": "editor.action.commentLine", "when": "editorTextFocus"}, //
			{"key": "shift+alt+down", "command": "editor.action.copyLinesDownAction", "when": "editorTextFocus"}, //
			{"key": "shift+alt+up", "command": "editor.action.copyLinesUpAction", "when": "editorTextFocus"}, //
			{"key": "ctrl+k ctrl+k", "command": "editor.action.defineKeybinding", "when": "editorFocus"}, //
			{"key": "ctrl+shift+k", "command": "editor.action.deleteLines", "when": "editorTextFocus"}, //
			{"key": "shift+alt+f", "command": "editor.action.format", "when": "editorTextFocus"}, //
			{"key": "f12", "command": "editor.action.goToDeclaration", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+.", "command": "editor.action.inPlaceReplace.down", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+,", "command": "editor.action.inPlaceReplace.up", "when": "editorTextFocus"}, //
			{"key": "ctrl+]", "command": "editor.action.indentLines", "when": "editorTextFocus"}, //
			{"key": "ctrl+alt+up", "command": "editor.action.insertCursorAbove", "when": "editorTextFocus"}, //
			{"key": "shift+alt+i", "command": "editor.action.insertCursorAtEndOfEachLineSelected", "when": "editorTextFocus"}, //
			{"key": "ctrl+alt+down", "command": "editor.action.insertCursorBelow", "when": "editorTextFocus"}, //
			{"key": "ctrl+enter", "command": "editor.action.insertLineAfter", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+enter", "command": "editor.action.insertLineBefore", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+\\", "command": "editor.action.jumpToBracket", "when": "editorTextFocus"}, //
			{"key": "f8", "command": "editor.action.marker.next", "when": "editorFocus"}, //
			{"key": "shift+f8", "command": "editor.action.marker.prev", "when": "editorFocus"}, //
			{"key": "alt+down", "command": "editor.action.moveLinesDownAction", "when": "editorTextFocus"}, //
			{"key": "alt+up", "command": "editor.action.moveLinesUpAction", "when": "editorTextFocus"}, //
			{"key": "ctrl+k ctrl+d", "command": "editor.action.moveSelectionToNextFindMatch", "when": "editorFocus"}, //
			{"key": "f3", "command": "editor.action.nextMatchFindAction", "when": "editorFocus"}, //
			{"key": "ctrl+f3", "command": "editor.action.nextSelectionMatchFindAction", "when": "editorFocus"}, //
			{"key": "ctrl+k f12", "command": "editor.action.openDeclarationToTheSide", "when": "editorTextFocus"}, //
			{"key": "ctrl+[", "command": "editor.action.outdentLines", "when": "editorTextFocus"}, //
			{"key": "alt+f12", "command": "editor.action.previewDeclaration", "when": "editorTextFocus"}, //
			{"key": "shift+f3", "command": "editor.action.previousMatchFindAction", "when": "editorFocus"}, //
			{"key": "ctrl+shift+f3", "command": "editor.action.previousSelectionMatchFindAction", "when": "editorFocus"}, //
			{"key": "ctrl+.", "command": "editor.action.quickFix", "when": "editorTextFocus"}, //
			{"key": "shift+f12", "command": "editor.action.referenceSearch.trigger", "when": "editorTextFocus"}, //
			{"key": "ctrl+k ctrl+u", "command": "editor.action.removeCommentLine", "when": "editorTextFocus"}, //
			{"key": "f2", "command": "editor.action.rename", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+l", "command": "editor.action.selectHighlights", "when": "editorFocus"}, //
			{"key": "alt+f1", "command": "editor.action.showAccessibilityHelp", "when": "editorFocus"}, //
			{"key": "shift+f10", "command": "editor.action.showContextMenu", "when": "editorTextFocus"}, //
			{"key": "ctrl+k ctrl+i", "command": "editor.action.showHover", "when": "editorTextFocus"}, //
			{"key": "shift+alt+right", "command": "editor.action.smartSelect.grow", "when": "editorTextFocus"}, //
			{"key": "shift+alt+left", "command": "editor.action.smartSelect.shrink", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+2", "command": "editor.action.sortLinesAscending", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+3", "command": "editor.action.sortLinesDescending", "when": "editorTextFocus"}, //
			{"key": "ctrl+h", "command": "editor.action.startFindReplaceAction"}, //
			{"key": "ctrl+m", "command": "editor.action.toggleTabFocusMode", "when": "editorTextFocus"}, //
			{"key": "alt+z", "command": "editor.action.toggleWordWrap", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+space", "command": "editor.action.triggerParameterHints", "when": "editorTextFocus"}, //
			{"key": "ctrl+space", "command": "editor.action.triggerSuggest", "when": "editorTextFocus"}, //
			{"key": "ctrl+shift+x", "command": "editor.action.trimTrailingWhitespace", "when": "editorTextFocus"}, //
			{"key": "ctrl+k ctrl+i", "command": "editor.debug.action.showDebugHover", "when": "inDebugMode && editorTextFocus"}, //
			{"key": "f9", "command": "editor.debug.action.toggleBreakpoint", "when": "editorTextFocus"}, //
			{"key": "tab", "command": "editor.emmet.action.expandAbbreviation", "when": "editorTextFocus && !editorHasSelection && !editorHasMultipleSelections && !editorTabMovesFocus"}, //
			{"key": "ctrl+shift+[", "command": "editor.fold", "when": "editorFocus"}, //
			{"key": "ctrl+shift+alt+[", "command": "editor.foldAll", "when": "editorFocus"}, //
			{"key": "ctrl+k ctrl+1", "command": "editor.foldLevel1", "when": "editorFocus"}, //
			{"key": "ctrl+k ctrl+2", "command": "editor.foldLevel2", "when": "editorFocus"}, //
			{"key": "ctrl+k ctrl+3", "command": "editor.foldLevel3", "when": "editorFocus"}, //
			{"key": "ctrl+k ctrl+4", "command": "editor.foldLevel4", "when": "editorFocus"}, //
			{"key": "ctrl+k ctrl+5", "command": "editor.foldLevel5", "when": "editorFocus"}, //
			{"key": "ctrl+shift+]", "command": "editor.unfold", "when": "editorFocus"}, //
			{"key": "ctrl+k ctrl+j", "command": "editor.unfoldAll", "when": "editorFocus"}, //
			{"key": "ctrl+shift+alt+]", "command": "editor.unfoldAll", "when": "editorFocus"}, //
			{"key": "shift+escape", "command": "closeFindWidget", "when": "editorFocus && findWidgetVisible"}, //
			{"key": "escape", "command": "closeFindWidget", "when": "editorFocus && findWidgetVisible"}, //
			{"key": "ctrl+alt+enter", "command": "editor.action.replaceAll", "when": "editorFocus"}, //
			{"key": "ctrl+shift+1", "command": "editor.action.replaceOne", "when": "editorFocus"}, //
			{"key": "alt+c", "command": "toggleFindCaseSensitive", "when": "editorFocus"}, //
			{"key": "alt+r", "command": "toggleFindRegex", "when": "editorFocus"}, //
			{"key": "alt+w", "command": "toggleFindWholeWord", "when": "editorFocus"}, //
			{"key": "shift+escape", "command": "closeBreakpointWidget", "when": "editorFocus && breakpointWidgetVisible"}, //
			{"key": "escape", "command": "closeBreakpointWidget", "when": "editorFocus && breakpointWidgetVisible"}, //
			{"key": "enter", "command": "acceptSnippet", "when": "editorTextFocus && inSnippetMode"}, //
			{"key": "tab", "command": "jumpToNextSnippetPlaceholder", "when": "editorTextFocus && inSnippetMode"}, //
			{"key": "shift+tab", "command": "jumpToPrevSnippetPlaceholder", "when": "editorTextFocus && inSnippetMode"}, //
			{"key": "shift+escape", "command": "leaveSnippet", "when": "editorTextFocus && inSnippetMode"}, //
			{"key": "escape", "command": "leaveSnippet", "when": "editorTextFocus && inSnippetMode"}, //
			{"key": "shift+escape", "command": "closeMarkersNavigation", "when": "editorFocus && markersNavigationVisible"}, //
			{"key": "escape", "command": "closeMarkersNavigation", "when": "editorFocus && markersNavigationVisible"}, //
			{"key": "shift+escape", "command": "closeReferenceSearch", "when": "editorFocus && referenceSearchVisible"}, //
			{"key": "escape", "command": "closeReferenceSearch", "when": "editorFocus && referenceSearchVisible"}, //
			{"key": "shift+escape", "command": "closeParameterHints", "when": "editorTextFocus && parameterHintsVisible"}, //
			{"key": "escape", "command": "closeParameterHints", "when": "editorTextFocus && parameterHintsVisible"}, //
			{"key": "alt+down", "command": "showNextParameterHint", "when": "editorTextFocus && parameterHintsVisible"}, //
			{"key": "down", "command": "showNextParameterHint", "when": "editorTextFocus && parameterHintsVisible"}, //
			{"key": "alt+up", "command": "showPrevParameterHint", "when": "editorTextFocus && parameterHintsVisible"}, //
			{"key": "up", "command": "showPrevParameterHint", "when": "editorTextFocus && parameterHintsVisible"}, //
			{"key": "tab", "command": "acceptQuickFixSuggestion", "when": "editorFocus && quickFixWidgetVisible"}, //
			{"key": "enter", "command": "acceptQuickFixSuggestion", "when": "editorFocus && quickFixWidgetVisible"}, //
			{"key": "shift+escape", "command": "closeQuickFixWidget", "when": "editorFocus && quickFixWidgetVisible"}, //
			{"key": "escape", "command": "closeQuickFixWidget", "when": "editorFocus && quickFixWidgetVisible"}, //
			{"key": "pagedown", "command": "selectNextPageQuickFix", "when": "editorFocus && quickFixWidgetVisible"}, //
			{"key": "down", "command": "selectNextQuickFix", "when": "editorFocus && quickFixWidgetVisible"}, //
			{"key": "pageup", "command": "selectPrevPageQuickFix", "when": "editorFocus && quickFixWidgetVisible"}, //
			{"key": "up", "command": "selectPrevQuickFix", "when": "editorFocus && quickFixWidgetVisible"}, //
			{"key": "tab", "command": "acceptSelectedSuggestion", "when": "editorTextFocus && suggestWidgetVisible"}, //
			{"key": "enter", "command": "acceptSelectedSuggestionOnEnter", "when": "suggestWidgetVisible && config.editor.acceptSuggestionOnEnter"}, //
			{"key": "shift+escape", "command": "hideSuggestWidget", "when": "editorTextFocus && suggestWidgetVisible"}, //
			{"key": "escape", "command": "hideSuggestWidget", "when": "editorTextFocus && suggestWidgetVisible"}, //
			{"key": "alt+pagedown", "command": "selectNextPageSuggestion", "when": "editorTextFocus && suggestWidgetVisible"}, //
			{"key": "pagedown", "command": "selectNextPageSuggestion", "when": "editorTextFocus && suggestWidgetVisible"}, //
			{"key": "alt+down", "command": "selectNextSuggestion", "when": "editorTextFocus && suggestWidgetVisible"}, //
			{"key": "down", "command": "selectNextSuggestion", "when": "editorTextFocus && suggestWidgetVisible"}, //
			{"key": "alt+pageup", "command": "selectPrevPageSuggestion", "when": "editorTextFocus && suggestWidgetVisible"}, //
			{"key": "pageup", "command": "selectPrevPageSuggestion", "when": "editorTextFocus && suggestWidgetVisible"}, //
			{"key": "alt+up", "command": "selectPrevSuggestion", "when": "editorTextFocus && suggestWidgetVisible"}, //
			{"key": "up", "command": "selectPrevSuggestion", "when": "editorTextFocus && suggestWidgetVisible"}, //
			{"key": "ctrl+space", "command": "toggleSuggestionDetails", "when": "editorTextFocus && suggestWidgetVisible"}, //
			{"key": "enter", "command": "acceptRenameInput", "when": "editorFocus && renameInputVisible"}, //
			{"key": "shift+escape", "command": "cancelRenameInput", "when": "editorFocus && renameInputVisible"}, //
			{"key": "escape", "command": "cancelRenameInput", "when": "editorFocus && renameInputVisible"}, //
			{"key": "shift+escape", "command": "closeAccessibilityHelp", "when": "editorFocus && accessibilityHelpWidgetVisible"}, //
			{"key": "escape", "command": "closeAccessibilityHelp", "when": "editorFocus && accessibilityHelpWidgetVisible"}, //
			{"key": "ctrl+shift+r", "command": "toggleExperimentalScreenReaderSupport"}, //
			{"key": "ctrl+w", "command": "workbench.action.closeActiveEditor"}, //
			{"key": "ctrl+f4", "command": "workbench.action.closeActiveEditor"}, //
			{"key": "ctrl+k f", "command": "workbench.action.closeFolder"}, //
			{"key": "shift+escape", "command": "workbench.action.closeMessages", "when": "globalMessageVisible"}, //
			{"key": "escape", "command": "workbench.action.closeMessages", "when": "globalMessageVisible"}, //
			{"key": "ctrl+shift+w", "command": "workbench.action.closeWindow"}, //
			{"key": "ctrl+k ctrl+right", "command": "workbench.action.compareEditor.nextChange", "when": "textCompareEditorVisible"}, //
			{"key": "ctrl+k ctrl+left", "command": "workbench.action.compareEditor.previousChange", "when": "textCompareEditorVisible"}, //
			{"key": "ctrl+`", "command": "workbench.action.cycleEditor"}, //
			{"key": "f5", "command": "workbench.action.debug.continue", "when": "inDebugMode"}, //
			{"key": "ctrl+shift+f5", "command": "workbench.action.debug.restart", "when": "inDebugMode"}, //
			{"key": "ctrl+f5", "command": "workbench.action.debug.run", "when": "!inDebugMode"}, //
			{"key": "f5", "command": "workbench.action.debug.start", "when": "!inDebugMode"}, //
			{"key": "shift+f11", "command": "workbench.action.debug.stepOut", "when": "inDebugMode"}, //
			{"key": "f10", "command": "workbench.action.debug.stepOver", "when": "inDebugMode"}, //
			{"key": "shift+f5", "command": "workbench.action.debug.stop", "when": "inDebugMode"}, //
			{"key": "ctrl+k m", "command": "workbench.action.editor.changeLanguageMode"}, //
			{"key": "ctrl+k p", "command": "workbench.action.files.copyPathOfActiveFile"}, //
			{"key": "ctrl+n", "command": "workbench.action.files.newUntitledFile"}, //
			{"key": "ctrl+o", "command": "workbench.action.files.openFile"}, //
			{"key": "ctrl+k r", "command": "workbench.action.files.revealActiveFileInWindows"}, //
			{"key": "ctrl+s", "command": "workbench.action.files.save"}, //
			{"key": "ctrl+shift+s", "command": "workbench.action.files.saveAs"}, //
			{"key": "ctrl+k o", "command": "workbench.action.files.showOpenedFileInNewWindow"}, //
			{"key": "ctrl+1", "command": "workbench.action.focusFirstEditor"}, //
			{"key": "ctrl+alt+left", "command": "workbench.action.focusLeftEditor"}, //
			{"key": "ctrl+alt+right", "command": "workbench.action.focusRightEditor"}, //
			{"key": "ctrl+2", "command": "workbench.action.focusSecondEditor"}, //
			{"key": "ctrl+0", "command": "workbench.action.focusSideBar"}, //
			{"key": "ctrl+3", "command": "workbench.action.focusThirdEditor"}, //
			{"key": "ctrl+g", "command": "workbench.action.gotoLine"}, //
			{"key": "ctrl+shift+o", "command": "workbench.action.gotoSymbol"}, //
			{"key": "ctrl+k v", "command": "workbench.action.markdown.openPreviewSideBySide"}, //
			{"key": "ctrl+shift+v", "command": "workbench.action.markdown.togglePreview"}, //
			{"key": "ctrl+k left", "command": "workbench.action.moveActiveEditorLeft"}, //
			{"key": "ctrl+k right", "command": "workbench.action.moveActiveEditorRight"}, //
			{"key": "alt+left", "command": "workbench.action.navigateBack"}, //
			{"key": "alt+right", "command": "workbench.action.navigateForward"}, //
			{"key": "ctrl+shift+n", "command": "workbench.action.newWindow"}, //
			{"key": "ctrl+shift+tab", "command": "workbench.action.openPreviousEditor"}, //
			{"key": "ctrl+tab", "command": "workbench.action.openPreviousEditor"}, //
			{"key": "ctrl+shift+u", "command": "workbench.action.output.toggleOutput"}, //
			{"key": "ctrl+e", "command": "workbench.action.quickOpen"}, //
			{"key": "ctrl+p", "command": "workbench.action.quickOpen"}, //
			{"key": "ctrl+tab", "command": "workbench.action.quickOpenNavigateNext", "when": "inQuickOpen"}, //
			{"key": "ctrl+e", "command": "workbench.action.quickOpenNavigateNext", "when": "inQuickOpen"}, //
			{"key": "ctrl+p", "command": "workbench.action.quickOpenNavigateNext", "when": "inQuickOpen"}, //
			{"key": "ctrl+shift+j", "command": "workbench.action.search.toggleQueryDetails", "when": "searchViewletVisible"}, //
			{"key": "ctrl+t", "command": "workbench.action.showAllSymbols"}, //
			{"key": "f1", "command": "workbench.action.showCommands"}, //
			{"key": "ctrl+shift+p", "command": "workbench.action.showCommands"}, //
			{"key": "ctrl+shift+m", "command": "workbench.action.showErrorsWarnings"}, //
			{"key": "ctrl+\\", "command": "workbench.action.splitEditor"}, //
			{"key": "ctrl+shift+b", "command": "workbench.action.tasks.build"}, //
			{"key": "ctrl+shift+t", "command": "workbench.action.tasks.test"}, //
			{"key": "ctrl+shift+c", "command": "workbench.action.terminal.openNativeConsole"}, //
			{"key": "f11", "command": "workbench.action.toggleFullScreen"}, //
			{"key": "ctrl+j", "command": "workbench.action.togglePanel"}, //
			{"key": "ctrl+b", "command": "workbench.action.toggleSidebarVisibility"}, //
			{"key": "ctrl+=", "command": "workbench.action.zoomIn"}, //
			{"key": "ctrl+-", "command": "workbench.action.zoomOut"}, //
			{"key": "ctrl+shift+y", "command": "workbench.debug.action.toggleRepl"}, //
			{"key": "ctrl+k enter", "command": "workbench.files.action.addToWorkingFiles"}, //
			{"key": "ctrl+k ctrl+w", "command": "workbench.files.action.closeAllFiles"}, //
			{"key": "ctrl+k w", "command": "workbench.files.action.closeFile"}, //
			{"key": "ctrl+k ctrl+shift+w", "command": "workbench.files.action.closeOtherFiles"}, //
			{"key": "ctrl+k e", "command": "workbench.files.action.focusWorkingFiles"}, //
			{"key": "ctrl+k down", "command": "workbench.files.action.openNextWorkingFile"}, //
			{"key": "ctrl+k up", "command": "workbench.files.action.openPreviousWorkingFile"}, //
			{"key": "ctrl+k ctrl+p", "command": "workbench.files.action.workingFilesPicker"}, //
			{"key": "ctrl+shift+d", "command": "workbench.view.debug"}, //
			{"key": "ctrl+shift+e", "command": "workbench.view.explorer"}, //
			{"key": "ctrl+shift+g", "command": "workbench.view.git"}, //
			{"key": "ctrl+shift+f", "command": "workbench.view.search"}, //
			{"key": "f11", "command": "workbench.action.debug.stepInto", "when": "inDebugMode"}, //
			{"key": "ctrl+shift+tab", "command": "workbench.action.quickOpenNavigatePrevious", "when": "inQuickOpen"}, //
			{"key": "ctrl+shift+e", "command": "workbench.action.quickOpenNavigatePrevious", "when": "inQuickOpen"}, //
			{"key": "ctrl+shift+p", "command": "workbench.action.quickOpenNavigatePrevious", "when": "inQuickOpen"}, //
			{"key": ".", "command": "^acceptSelectedSuggestion", "when": "editorTextFocus && suggestWidgetVisible && editorLangId == 'typescript' && suggestionSupportsAcceptOnKey"} //
			]


		// 以下是其他可用命令:
		// - cursorWordEndLeft
		// - cursorWordEndLeftSelect
		// - cursorWordLeft
		// - cursorWordLeftSelect
		// - cursorWordRight
		// - cursorWordRightSelect
		// - cursorWordStartRight
		// - cursorWordStartRightSelect
		// - cut
		// - default:cut
		// - default:paste
		// - default:replacePreviousChar
		// - default:type
		// - deleteAllLeft
		// - deleteAllRight
		// - deleteWordEndLeft
		// - deleteWordEndRight
		// - deleteWordStartLeft
		// - deleteWordStartRight
		// - editor.action.clearoutput
		// - editor.action.detectIndentation
		// - editor.action.findReferences
		// - editor.action.goToTypeDeclaration
		// - editor.action.indentUsingSpaces
		// - editor.action.indentUsingTabs
		// - editor.action.indentationToSpaces
		// - editor.action.indentationToTabs
		// - editor.action.openLink
		// - editor.action.showReferences
		// - editor.action.toggleRenderWhitespace
		// - editor.debug.action.conditionalBreakpoint
		// - editor.debug.action.runToCursor
		// - editor.debug.action.selectionToRepl
		// - editor.debug.action.selectionToWatch
		// - javascript.reloadProjects
		// - js.projectStatus.command
		// - lineBreakInsert
		// - paste
		// - replacePreviousChar
		// - type
		// - typescript.reloadProjects
		// - vscode.executeCodeActionProvider
		// - vscode.executeCodeLensProvider
		// - vscode.executeCompletionItemProvider
		// - vscode.executeDefinitionProvider
		// - vscode.executeDocumentHighlights
		// - vscode.executeDocumentRenameProvider
		// - vscode.executeDocumentSymbolProvider
		// - vscode.executeFormatDocumentProvider
		// - vscode.executeFormatOnTypeProvider
		// - vscode.executeFormatRangeProvider
		// - vscode.executeHoverProvider
		// - vscode.executeReferenceProvider
		// - vscode.executeSignatureHelpProvider
		// - vscode.executeWorkspaceSymbolProvider
		// - vscode.previewHtml
		// - workbench.action.appPerf
		// - workbench.action.closeAllEditors
		// - workbench.action.closeOtherEditors
		// - workbench.action.configureLocale
		// - workbench.action.debug.configure
		// - workbench.action.debug.pause
		// - workbench.action.editor.changeEOL
		// - workbench.action.editor.changeEncoding
		// - workbench.action.evenEditorWidths
		// - workbench.action.files.newFolder
		// - workbench.action.files.openFolder
		// - workbench.action.files.revert
		// - workbench.action.files.saveAll
		// - workbench.action.files.saveFiles
		// - workbench.action.git.globalOpenChange
		// - workbench.action.git.globalOpenFile
		// - workbench.action.git.publish
		// - workbench.action.git.pull
		// - workbench.action.git.push
		// - workbench.action.git.startGitBranch
		// - workbench.action.git.startGitCheckout
		// - workbench.action.git.sync
		// - workbench.action.maximizeEditor
		// - workbench.action.minimizeOtherEditors
		// - workbench.action.openGlobalKeybindings
		// - workbench.action.openGlobalSettings
		// - workbench.action.openRecent
		// - workbench.action.openSnippets
		// - workbench.action.openWorkspaceSettings
		// - workbench.action.reloadWindow
		// - workbench.action.selectTheme
		// - workbench.action.tasks.configureTaskRunner
		// - workbench.action.tasks.runTask
		// - workbench.action.tasks.showLog
		// - workbench.action.tasks.terminate
		// - workbench.action.toggleDevTools
		// - workbench.action.toggleMenuBar
		// - workbench.action.toggleSidebarPosition
		// - workbench.action.zoomReset
		// - workbench.debug.viewlet.action.addFunctionBreakpointAction
		// - workbench.debug.viewlet.action.reapplyBreakpointsAction
		// - workbench.extensions.action.installExtension
		// - workbench.extensions.action.listExtensions
		// - workbench.extensions.action.listOutdatedExtensions
		// - workbench.extensions.action.listSuggestedExtensions
		// - workbench.files.action.compareFileWith
		// - workbench.files.action.focusFilesExplorer
	}
}