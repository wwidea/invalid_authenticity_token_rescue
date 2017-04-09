class ExceptionNotifier
  def ExceptionNotifier.notify_exception(*args)
    Rails.logger.info("ExceptionNotifier.notify_exception called")
  end
end
