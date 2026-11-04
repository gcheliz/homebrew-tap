class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.37/gtunnel-macos-arm64-v0.3.37.tar.gz"
      sha256 "abf101e032831ffc2730b175418e9b2b265c4cf10ef1583e0be00de6ada6a0c9"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.37/gtunnel-macos-intel-v0.3.37.tar.gz"
      sha256 "1d4da93da66993782ded438814362f44b4caa2762db47a83a9c4a967647f01ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.37/gtunnel-linux-arm64-v0.3.37.tar.gz"
      sha256 "3402cfdd5caf6761a47bc6b665503e9f1a811b6753c80f5e25823538a645a7b3"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.37/gtunnel-linux-amd64-v0.3.37.tar.gz"
      sha256 "b33a6de120164f204e329e5024ab2615158585764bbabd816507751fe5af5142"
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
