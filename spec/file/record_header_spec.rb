require 'spec_helper'

describe FitParser::File::RecordHeader do
  context 'given a sample normal header' do
    subject do
      described_class.read example_file('record/normal_header')
    end

    its(:header_type) { should == 0 }
    its(:message_type) { should == 1 }
    its(:local_message_type) { should == 0 }

    it { is_expected.to be_normal }
    it { is_expected.not_to be_a_compressed_timestamp }
  end

  context 'given a sample compressed timestamp header' do
    # TODO
  end
end
