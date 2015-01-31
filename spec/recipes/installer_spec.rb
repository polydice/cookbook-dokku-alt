require_relative "../spec_helper"

describe "dokku-alt::installer" do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: "ubuntu", version: "14.04").converge(described_recipe) }

  it "installs dokku-alt" do
    expect(chef_run).to include_recipe("dokku-alt::default")
  end

  it "runs doku-installer script" do
    expect(chef_run).to run_script("dokku-installer")
  end
end
