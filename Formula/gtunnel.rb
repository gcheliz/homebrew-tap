class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.57/gtunnel-macos-arm64-v0.2.57.tar.gz"
      sha256 "e20a534f10d542abf2bcb9b176ae453b1ac09773dc2ba0cfe1085a232196f38b"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.57/gtunnel-macos-intel-v0.2.57.tar.gz"
      sha256 "22ab83ebf52f426e66d344496f900c48a264210ee444942c65cbbf12c6d79bfb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.57/gtunnel-linux-arm64-v0.2.57.tar.gz"
      sha256 "792cfbc1716af497f977a1a9b1e7aaa3f68f2ce98a097324e1a70fe61abbaf8a"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.57/gtunnel-linux-amd64-v0.2.57.tar.gz"
      sha256 "0b399b52e6047c18097683976d562fddfdf998a9aa0b9eaa3611e2e77b7ad8b6"
    end
  end

  def install
    bin.install "gtunnel"
    generate_completions_from_executable(bin/"gtunnel", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtunnel --version")
  end
end
