package wire

import (
	"github.com/neatio-project/go-logger"
)

var log = logger.New("module", "binary")

func init() {
	log.SetHandler(
		logger.LvlFilterHandler(
			logger.LvlWarn,
			//logger.LvlDebug,
			logger.MainHandler(),
		),
	)
}
