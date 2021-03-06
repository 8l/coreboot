#
# This file is part of the coreboot project.
#
# Copyright (C) 2007-2009 coresystems GmbH
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
#

ramstage-y += ram_calc.c
ramstage-y += northbridge.c
ramstage-y += gma.c
ramstage-y += acpi.c

romstage-y += ram_calc.c
romstage-y += raminit.c
romstage-y += early_init.c
romstage-y += errata.c
romstage-y += debug.c

smm-y += udelay.c
