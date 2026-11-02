class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.29/gtunnel-macos-arm64-v0.3.29.tar.gz"
      sha256 "5c24c61bc6a948ed25fa1ca2d1230c31890689a1382ac34a07426e0a2d85b225"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.29/gtunnel-macos-intel-v0.3.29.tar.gz"
      sha256 "816fd901bf62e2621249db5f0c39c7ac49494137caa9c210cf6896a72451f2e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.29/gtunnel-linux-arm64-v0.3.29.tar.gz"
      sha256 "5cb1a211ec5d4e0cef0eba734ae49d9162f770babca165ea5d9b4d51eddd79c7"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.29/gtunnel-linux-amd64-v0.3.29.tar.gz"
      sha256 "0ee3acc38f37d56fa0019d5131475d1dd18bf6f288969fb490dfcfaabe818257"
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
