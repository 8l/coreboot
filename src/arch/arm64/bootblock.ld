/*
 * This file is part of the coreboot project.
 *
 * Copyright (C) 2006 Advanced Micro Devices, Inc.
 * Copyright (C) 2008-2010 coresystems GmbH
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 2 of the License.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
 */

/* We use ELF as output format. So that we can debug the code in some form. */
OUTPUT_FORMAT("elf64-littleaarch64", "elf64-littleaarch64", "elf64-littleaarch64")
OUTPUT_ARCH(aarch64)
INCLUDE ldoptions

PHDRS
{
	to_load PT_LOAD;
}

ENTRY(_start)
TARGET(binary)
SECTIONS
{
	. = CONFIG_BOOTBLOCK_BASE;

	.bootblock . : {
		*(.text._start);
		KEEP(*(.id));
		*(.text);
		*(.text.*);
		*(.rodata);
		*(.rodata.*);
		*(.data);
		*(.data.*);
		*(.bss);
		*(.bss.*);
		*(.sbss);
		*(.sbss.*);
	} : to_load = 0xff

	/DISCARD/ : {
		*(.comment)
		*(.note)
		*(.comment.*)
		*(.note.*)
		*(.ARM.*)
	}
}
