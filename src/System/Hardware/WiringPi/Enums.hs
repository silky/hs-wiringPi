module System.Hardware.WiringPi.Enums
  ( Value(..)
  , Mode(..)
  , Pud(..)
  , PwmMode(..)
  ) where

-- | Digital logic level.
data Value = LOW | HIGH deriving (Eq, Ord, Show, Read, Enum, Bounded)

-- | Pin mode, used with 'pinMode'.
data Mode = INPUT      -- ^ digital input
          | OUTPUT     -- ^ digital output
          | PWM_OUTPUT -- ^ pulse-width modulation; only supported on wiringPi pin 1
          | GPIO_CLOCK -- ^ clock output; only supported on wiringPi pin 7
          deriving (Eq, Ord, Show, Read, Enum, Bounded)

-- | Use with 'pullUpDnControl' to enable internal pull-up or pull-down
-- resistor.
data Pud = PUD_OFF  -- ^ disable pull-up/pull-down
         | PUD_DOWN -- ^ enable pull-down resistor
         | PUD_UP   -- ^ enable pull-up resistor
         deriving (Eq, Ord, Show, Read, Enum, Bounded)

-- | Argument to 'pwmSetMode' to set \"balanced\" mode or \"mark-space\" mode.
data PwmMode = PWM_MODE_BAL -- ^ balanced mode
             | PWM_MODE_MS  -- ^ mark-space mode
             deriving (Eq, Ord, Show, Read, Enum, Bounded)
