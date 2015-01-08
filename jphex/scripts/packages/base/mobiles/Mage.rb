#-------------------------------------------------------------------------------
# Copyright (c) 2013 Folke Will <folke.will@gmail.com>
# 
# This file is part of JPhex.
# 
# JPhex is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# JPhex is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#-------------------------------------------------------------------------------
require './scripts/packages/base/mobiles/Merchant'
class Mage < Merchant
  include MobileBehavior

  def setupMerchant(me)
    me.setSuffix("the Mage")
    $api.createItemInBackpack(me, 0x0386) # spellbook
    $api.createItemInBackpack(me, 0x0387) # lightsource
    $api.createItemInBackpack(me, 0x0444) # darksource
    $api.createItemInBackpack(me, 0x0445) # great light
    $api.createItemInBackpack(me, 0x0446) # light
    $api.createItemInBackpack(me, 0x0447) # healing
    $api.createItemInBackpack(me, 0x0448) # fireball
    $api.createItemInBackpack(me, 0x0449) # create food
  end
end
