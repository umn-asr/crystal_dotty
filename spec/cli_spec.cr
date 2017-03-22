require "./spec_helper"

require "../src/cli"

Spec2.describe CLI do
  describe "displaying help" do
    it "displayed when the --help flag is passed" do
      command = "crystal run src/main.cr -- --help"
      io = IO::Memory.new
      Process.run(command, shell: true, output: io)
      output = io.to_s

      expect(output).to match(/Help/)
    end

    it "is displayed when the no arguments are passed" do
      command = "crystal run src/main.cr"
      io = IO::Memory.new
      Process.run(command, shell: true, output: io)
      output = io.to_s

      expect(output).to match(/Help/)
    end
  end
end
