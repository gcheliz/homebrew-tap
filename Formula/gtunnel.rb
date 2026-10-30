class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.10/gtunnel-macos-arm64-v0.3.10.tar.gz"
      sha256 "8dd2f2d7c775d5097703cdc70a154bb33274034ae1f7ad55315f3546a02d5695"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.10/gtunnel-macos-intel-v0.3.10.tar.gz"
      sha256 "d39252f448729cf3a5d0279177fa7b79bd0d33ad2af8f74a09e0b2a21a58335d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.10/gtunnel-linux-arm64-v0.3.10.tar.gz"
      sha256 "fc9ed2b9192e78abc404b21930ac6abd65790cec22b355965e17fde940bcffec"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.10/gtunnel-linux-amd64-v0.3.10.tar.gz"
      sha256 "19af5ca7148ce5f591159640a2974cd48135c3aaf815eecb7bc254932cc988d7"
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
