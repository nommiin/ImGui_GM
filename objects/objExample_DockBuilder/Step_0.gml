// Adapted from https://gist.github.com/AidanSun05/953f1048ffe5699800d2c92b88c36d9f
if (!init) {
	var node_id = ImGui.GetID("Primary");
	ImGui.DockBuilderRemoveNode(node_id);
	ImGui.DockBuilderAddNode(node_id);
	var width = window_get_width() / 2, height = window_get_height() / 2;
	ImGui.DockBuilderSetNodePos(node_id, (window_get_width() / 2) - (width / 2), (window_get_height() / 2) - (height / 2));
	ImGui.DockBuilderSetNodeSize(node_id, width, height);
	
	/*
		ImGui.DockBuilderSplitNode creates 3 nodes, one for the parent that contains two children
		0th value is the parent node ID
		1st value is the node that was made in the direction of the split (ie: ImGuiDir.Left would yield the left node here)
		2nd value is the node that was made in the opposing direction of the split (ie: ImGuiDir.Left would yield the right node here)
	*/
	var dock1 = ImGui.DockBuilderSplitNode(node_id, ImGuiDir.Left, 0.5);
	node_id = dock1[2];
	dock1 = dock1[0];
	
	var dock2 = ImGui.DockBuilderSplitNode(node_id, ImGuiDir.Right, 0.5);
	node_id = dock2[2];
	dock2 = dock2[0];
	
	var dock3 = ImGui.DockBuilderSplitNode(dock2, ImGuiDir.Down, 0.5);
	dock2 = dock3[2];
	dock3 = dock3[0];
	
	ImGui.DockBuilderDockWindow("One", dock1);
	ImGui.DockBuilderDockWindow("Two", dock2);
	ImGui.DockBuilderDockWindow("Three", dock3);
	init = true;	
}

ImGui.Begin("One");
ImGui.End();
ImGui.Begin("Two");
ImGui.End();
ImGui.Begin("Three");
ImGui.End();