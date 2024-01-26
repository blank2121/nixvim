{
  plugins.neo-tree.enable = true;
  keymaps = [
    {
      key = "<leader>e";
      action = "<cmd>Neotree toggle<CR>";
    }
  ];
  plugins.which-key.registrations = {
	"<leader>e" = "Neotree toggle";
  };
}
