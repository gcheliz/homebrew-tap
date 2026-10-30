class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.5/gtunnel-macos-arm64-v0.3.5.tar.gz"
      sha256 "8bcb396de580db7afade5f1e4b64f95115371c76304cb301d43024a4799d9c3d"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.5/gtunnel-macos-intel-v0.3.5.tar.gz"
      sha256 "9bf53c72623be51a3dddb2589ae36b0cee78070bd80bb1198b2e825d3663b807"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.5/gtunnel-linux-arm64-v0.3.5.tar.gz"
      sha256 "3c03f25960409da22d3eb7a6507cfbe50ee01738197280dd6b79aaee63751757"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.5/gtunnel-linux-amd64-v0.3.5.tar.gz"
      sha256 "3a7e4cda10386185655114f455c4a4ff531163c92443604589d196504d7a4b50"
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
