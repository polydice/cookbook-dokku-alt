require_relative "../spec_helper"

describe "dokku-alt::default" do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: "ubuntu", version: "14.04").converge(described_recipe) }

  it "installs apt https transport package" do
    expect(chef_run).to install_apt_package("apt-transport-https")
  end

  it "adds apt repositories" do
    %w{docker dokku-alt}.each do |apt|
      expect(chef_run).to add_apt_repository(apt)
    end
  end

  it "installs desired packages" do
    %w{dokku-alt ruby ruby-sinatra}.each do |pkg|
      expect(chef_run).to install_apt_package(pkg)
    end
  end
end
