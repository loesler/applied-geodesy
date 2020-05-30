/***********************************************************************
* Copyright by Michael Loesler, https://software.applied-geodesy.org   *
*                                                                      *
* This program is free software; you can redistribute it and/or modify *
* it under the terms of the GNU General Public License as published by *
* the Free Software Foundation; either version 3 of the License, or    *
* at your option any later version.                                    *
*                                                                      *
* This program is distributed in the hope that it will be useful,      *
* but WITHOUT ANY WARRANTY; without even the implied warranty of       *
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the        *
* GNU General Public License for more details.                         *
*                                                                      *
* You should have received a copy of the GNU General Public License    *
* along with this program; if not, see <http://www.gnu.org/licenses/>  *
* or write to the                                                      *
* Free Software Foundation, Inc.,                                      *
* 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.            *
*                                                                      *
***********************************************************************/


package org.applied_geodesy.juniform.ui.tree;

import org.applied_geodesy.adjustment.geometry.surface.primitive.Surface;
import org.applied_geodesy.juniform.ui.tabpane.TabType;

public class SurfaceTreeItemValue extends TreeItemValue<Surface> {
	SurfaceTreeItemValue(String name, TreeItemType treeItemType) {
		super(name, treeItemType);
	}
	
	@Override
	public TabType[] getTabTypes() {
		return new  TabType[] {
				TabType.POINT_SELECTION,
				TabType.APOSTERIORI_PARAMETER
		};
	}
}
