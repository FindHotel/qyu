# frozen_string_literal: true

require_relative '../config'

class SplitArrayWorker
  def initialize
    @worker = Qyu::SplitWorker.new do
      callback :execute, :before do
        Qyu.logger.info 'Waiting for task..'
      end

      callback :execute, :after do
        Qyu.logger.info 'Split'
      end

      # Payload validation
      validates :array, presence: true, type: :array
    end
  end

  def run
    # Consumes message from split-array queue
    @worker.work('split-array')
  end
end

class SplitArrayWorker
  def initialize
    @worker = Qyu::SplitWorker.new do
      callback :execute, :before do
        Qyu.logger.info 'Waiting for task..'
      end

      callback :execute, :after do
        Qyu.logger.info 'Split'
      end

      # Payload validation
      validates :array, presence: true, type: :array
    end
  end

  def run
    # Consumes message from split-array queue
    @worker.work('split-array')
  end
end
