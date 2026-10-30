class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.42/gtunnel-macos-arm64-v0.2.42.tar.gz"
      sha256 "9ad92b1fbd13ee27dbc8ddc9f81b4cb5338e7dac9d310aa5d3809da40abe163c"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.42/gtunnel-macos-intel-v0.2.42.tar.gz"
      sha256 "cf3cc453dfcd0958a0e58985a085d1b57fbb3af7e9d8cd0485b640f504f64efa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.42/gtunnel-linux-arm64-v0.2.42.tar.gz"
      sha256 "8acb408f35bc4906772e96988badf4c547942c2eacf061be1effaa8f95013fa5"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.42/gtunnel-linux-amd64-v0.2.42.tar.gz"
      sha256 "316cd54ec55872007ffa4ccb2ee8481bb0dfed19ca3dfdfc365dd28871bc545e"
    end
  end

  def install
    bin.install "gtunnel"
    generate_completions_from_executable(bin/"gtunnel", "completions")
  end

  def caveats
    <<~EOS
      gtunnel drives gcloud and needs a logged-in Google Cloud CLI:
        gcloud auth login
      Prerequisites and IAM: https://github.com/gcheliz/gtunnel/blob/main/docs/usage.md#getting-set-up
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtunnel --version")
  end
end
