﻿/* *********************************************************************
 * The contents of this file are subject to the Mozilla Public License 
 * Version 1.1 (the "License"); you may not use this file except in 
 * compliance with the License. You may obtain a copy of the License at 
 * http://www.mozilla.org/MPL/
 * 
 * Software distributed under the License is distributed on an "AS IS" 
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. 
 * See the License for the specific language governing rights and 
 * limitations under the License.
 *
 * The Original Code is named .NET Mobile API, first released under 
 * this licence on 11th March 2009.
 * 
 * The Initial Developer of the Original Code is owned by 
 * 51 Degrees Mobile Experts Limited. Portions created by 51 Degrees 
 * Mobile Experts Limited are Copyright (C) 2009 - 2011. All Rights Reserved.
 * 
 * Contributor(s):
 *     James Rosewell <james@51degrees.mobi>
 * 
 * ********************************************************************* */
#if AZURE

using Microsoft.WindowsAzure.StorageClient;
using System;

namespace FiftyOne
{
    /// <summary>
    /// Class used to encapsulate a message to be written to the log table service.
    /// </summary>
    public class LogMessageEntity : TableServiceEntity
    {
        /// <summary>
        /// Creates a new instance of LogMessageEntity.
        /// </summary>
        public LogMessageEntity() { }

        /// <summary>
        /// Creates a new instance of LogMessageEntity initialised
        /// with the message provided.
        /// </summary>
        /// <param name="message">The message to be associated with the entity.</param>
        public LogMessageEntity(string message) :
            base(DateTime.UtcNow.Hour.ToString(), Guid.NewGuid().ToString())
        {
            Message = message;
        }

        /// <summary>
        /// The log message.
        /// </summary>
        public string Message { get; set; }
    }
}

#endif
