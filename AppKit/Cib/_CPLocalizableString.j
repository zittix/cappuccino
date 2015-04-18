/*
 * _CPLocalizableString.j
 * AppKit
 *
 * Created by Alexandre Wilhelm.
 * Copyright 2008, 280 North, Inc.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

@import <Foundation/CPString.j>

@implementation _CPLocalizableString : CPString
{
    CPString _dev @accessors(property=dev);
    CPString _key @accessors(property=key);
}

- (id)init
{
    if (self = [super init])
    {

    }

    return self;
}

@end


var CPLocalizableStringDev = @"CPLocalizableStringDev",
    CPLocalizableStringKey = @"CPLocalizableStringKey";

@implementation _CPLocalizableString (CPCoding)

- (id)initWithCoder:(CPCoder)aCoder
{
    [self init];

    _dev = [aCoder decodeObjectForKey:CPLocalizableStringDev];
    _key = [aCoder decodeObjectForKey:CPLocalizableStringKey];

    //TODO: here we should not return self but the string from CPLocalizedStringFromTable
    return self;
}

- (void)encodeWithCoder:(CPCoder)aCoder
{
    [aCoder encodeObject:_dev forKey:CPLocalizableStringDev];
    [aCoder encodeObject:_key forKey:CPLocalizableStringKey];
}

@end